import 'dart:async';

import 'package:collection/collection.dart';
import 'package:directed_graph/directed_graph.dart';
import 'package:flutter/foundation.dart';

import 'exception/chained_exception.dart';

/// Implement this class with initialization logic and pass to [Bootstrap].
abstract class StartupHook {
  /// Get things ready: init, restore state, etc.
  @mustCallSuper
  Future<void> bootstrap();

  Future<void> dispose() => Future.value();

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

  DirectedGraph<Type> get _depsGraph {
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
    return graph;
  }

  Iterable<Iterable<StartupHook>> get _depsInOrder =>
      // We get a list like [Type1 -> Type2 -> Type3]
      // where Type1 depends on Type2 so we reverse it
      _depsGraph.localSources!.reversed.map(
        (list) => list.map((type) => mappedDeps[type]!),
      );

  Future<void> call() async {
    for (final list in _depsInOrder) {
      await Future.wait(list.map(_bootstrap));
    }
  }

  Future<void> dispose() async {
    // dispose in opposite order
    for (final list in _depsInOrder.toList().reversed) {
      await Future.wait(list.map((d) => d.dispose()));
    }
  }

  void _log(String str) {
    // ignore: avoid_print
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
