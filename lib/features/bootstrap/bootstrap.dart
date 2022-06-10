import 'dart:async';

import 'package:birthday_app/features/account/account_state.dart';
import 'package:core/core.dart';

import '../db/hive.dart';

/// Implement this class with initialization logic and add it to `deps` in bootstrap.dart
abstract class StartupHook {
  /// Get things ready: init, restore state, etc.
  @mustCallSuper
  Future<void> bootstrap();

  /// List of dependencies that should be bootstrapped before this.
  /// Types should subclass [StartupHook].
  List<Type> deps() => [];
}

final deps = <Type, StartupHook>{
  RestoreLogin: RestoreLogin(),
  RestoreHive: RestoreHive(),
};

class Bootstrap {
  final mappedDeps = UnmodifiableMapView(deps.map(
    (key, value) => MapEntry(key, _HookLifeCycle(value)),
  ));
  final _seen = <_HookLifeCycle>[];

  /// Check if an encountered object is already being traversed.
  ///
  /// Records the object if it isn't already seen. Should have a matching call to
  /// [_removeSeen] when the object is no longer being traversed.
  void _checkCycle(_HookLifeCycle object) {
    for (var i = 0; i < _seen.length; i++) {
      if (identical(object, _seen[i])) {
        throw ChainedException.origin(
          'Dependencies cycle detected while bootstrapping ${object._child.runtimeType}',
        );
      }
    }
    _seen.add(object);
  }

  /// Remove [object] from the list of currently traversed objects.
  ///
  /// Should be called in the opposite order of the matching [_checkCycle]
  /// calls.
  void _removeSeen(Object? object) {
    assert(_seen.isNotEmpty);
    assert(identical(_seen.last, object));
    _seen.removeLast();
  }

  Future<void> run() async {
    await Future.wait(mappedDeps.values.map(_bootstrap), eagerError: true);
  }

  Future<void> _bootstrap(_HookLifeCycle hook) async {
    if (hook.isRestored) return;

    _checkCycle(hook);
    if (hook._restorationStarted) {
      await hook.waitRestoration;
    } else {
      await Future.wait(_getDeps(hook).map(_bootstrap), eagerError: true);
      try {
        await hook.bootstrap();
      } catch (error) {
        throw ChainedException.foreign(
          error,
          'Thrown during bootstrapping of ${hook.runtimeType}.'
          'Maybe some dependencies are missing?',
        );
      }
    }
    _removeSeen(hook);
  }

  Iterable<_HookLifeCycle> _getDeps(StartupHook hook) sync* {
    for (final depType in hook.deps()) {
      final hookDep = mappedDeps[depType];
      if (hookDep == null) {
        throw ChainedException.origin(
          '${hook.runtimeType} dependency $depType was not found.',
        );
      }
      yield hookDep;
    }
  }
}

class _HookLifeCycle implements StartupHook {
  final StartupHook _child;
  _HookLifeCycle(this._child);

  final _compl = Completer();
  bool _restorationStarted = false;
  bool get isRestored => _compl.isCompleted;
  Future<void> get waitRestoration => _compl.future;

  @override
  Future<void> bootstrap() async {
    start();
    await _child.bootstrap();
    end();
  }

  @override
  List<Type> deps() => _child.deps();

  @protected
  void start() => _restorationStarted = true;

  @protected
  void end() => _compl.complete();
}
