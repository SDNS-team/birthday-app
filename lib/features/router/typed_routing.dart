import 'package:core/core.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

extension TypedRouteHelper on BuildContext {
  /// Navigate to a route.
  void go(TypedRouteData route) {
    GoRouter.of(this).goNamed(
      route.name(),
      params: route.pathParams(),
      queryParams: route.queryParams(),
    );
  }

  void goToLocation(String location) {
    GoRouter.of(this).go(location);
  }

  /// Push a route onto the page stack.
  void push(TypedRouteData route) {
    GoRouter.of(this).pushNamed(
      route.name(),
      params: route.pathParams(),
      queryParams: route.queryParams(),
    );
  }

  /// Pop the top page off the Navigator's page stack by calling
  /// [Navigator.pop].
  void pop() => GoRouter.of(this).pop();
}

extension TypedRouteStateHelper on GoRouterState {
  /// Extracts name, pathParams, and queryParams from [data]
  String namedLocationTyped(TypedRouteData data) {
    return namedLocation(
      data.name(),
      params: data.pathParams(),
      queryParams: data.queryParams(),
    );
  }
}

extension TypedParamsHelper on GoRouterState {
  TypedRouteParams get typedParams => TypedRouteParams(params, queryParams);
}

/// See [BuiltTypedRoute] mixin
abstract class TypedRouteData {
  const TypedRouteData();

  /// Name of this route
  /// Ex: 'songs'
  String name();

  @protected
  TypedParamsBuilder get path => const TypedParamsBuilder.empty();
  @protected
  TypedParamsBuilder get query => const TypedParamsBuilder.empty();

  @nonVirtual
  Map<String, String> pathParams() => path.build();

  @nonVirtual
  Map<String, String> queryParams() => query.build();
}

class TypedParamsBuilder {
  final Map<String, String> _map;
  const TypedParamsBuilder._(this._map);
  factory TypedParamsBuilder([Map<String, dynamic>? params]) {
    params ??= {};
    params.removeWhere((key, value) => value == null);
    return TypedParamsBuilder._(params.map(
      (key, value) => MapEntry(key, value.toString()),
    ));
  }
  const TypedParamsBuilder.empty() : _map = const {};

  void withParam(String key, dynamic value) {
    if (value != null) {
      _map[key] = value.toString();
    }
  }

  Map<String, String> build() => _map;
}

class TypedRouteParams {
  final Map<String, String> _pathParams;
  final Map<String, String> _queryParams;
  const TypedRouteParams(this._pathParams, this._queryParams);

  /// [int] from path
  int pathInt(String key) => _unwrap(key, _pathParams[key], int.parse);

  /// [String] from path
  String pathString(String key) => _unwrap(key, _pathParams[key], (s) => s);

  /// [double] from path
  double pathDouble(String key) => _unwrap(key, _pathParams[key], double.parse);

  /// [int] from query
  int? queryInt(String key) => _unwrapNullable(_queryParams[key], int.parse);

  /// [String] from query
  String? queryString(String key) =>
      _unwrapNullable(_queryParams[key], (s) => s);

  /// [double] from query
  double? queryDouble(String key) =>
      _unwrapNullable(_queryParams[key], double.parse);

  /// [bool] from query
  bool? queryBool(String key) =>
      _unwrapNullable(_queryParams[key], (s) => s == 'true');

  T _unwrap<T>(String key, String? value, T Function(String) parser) {
    if (value == null) {
      throw ChainedException.origin('Parameter $key was null!');
    }
    return parser(value);
  }

  T? _unwrapNullable<T>(String? value, T? Function(String) parser) {
    if (value == null) return null;
    return parser(value);
  }
}
