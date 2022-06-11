import 'dart:async';

import 'package:collection/collection.dart';
import 'package:directed_graph/directed_graph.dart';
import 'package:meta/meta.dart';

import 'exception/chained_exception.dart';

/// Implement this class with initialization logic and add it to `deps` in bootstrap.dart
abstract class StartupHook {
  /// Get things ready: init, restore state, etc.
  @mustCallSuper
  Future<void> bootstrap();

  /// List of dependencies that should be bootstrapped before this.
  /// Types should subclass [StartupHook].
  Set<Type> deps() => {};
}

// final deps = <Type, StartupHook>{
//   RestoreLogin: RestoreLogin(),
//   RestoreHive: RestoreHive(),
// };

class Bootstrap {
  Bootstrap(this._deps, {this.enableLogs = false});

  final bool enableLogs;

  final List<StartupHook> _deps;
  late final mappedDeps = UnmodifiableMapView(Map.fromEntries(
    _deps.map((hook) => MapEntry(hook.runtimeType, hook)),
  ));

  Future<void> call() async {
    final graph = DirectedGraph<Type>(
      {
        for (final hook in _deps) hook.runtimeType: hook.deps(),
      },
      comparator: (t, t2) => 0,
    );
    if (graph.isAcyclic == false) {
      throw ChainedException.origin(
        'Bootstrap dependencies cycle detected',
        vars: {'Cycle': graph.cycle.join(' -> ')},
      );
    }

    for (final list in graph.localSources!.reversed) {
      await Future.wait(list.map((t) => _bootstrap(mappedDeps[t]!)));
    }
  }

  void _log(String str) {
    if (enableLogs) print(str);
  }

  Future<void> _bootstrap(StartupHook hook) async {
    try {
      await hook.bootstrap();
      _log('Bootstrapped ${hook.runtimeType}');
    } catch (error) {
      throw ChainedException.foreign(
        error,
        'Thrown during bootstrapping of ${hook.runtimeType}.'
        'Maybe some dependencies are missing?',
      );
    }
  }
}
