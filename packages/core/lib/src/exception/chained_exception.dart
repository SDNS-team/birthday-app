import 'package:meta/meta.dart';

import 'chained_exception_formatter.dart';

abstract class ChainedException implements Exception {
  final Map<String, dynamic> _vars;
  const ChainedException._(this._vars);

  /// Creates origin exception
  const factory ChainedException.origin(
    String message, {
    Map<String, dynamic> vars,
  }) = _ChainedOrigin;

  /// Creates origin from exception from other library
  const factory ChainedException.foreign(
    Object foreignException,
    String context, {
    Map<String, dynamic> vars,
  }) = _ForeignOrigin;

  /// Adds context to previous exception
  const factory ChainedException.context(
    ChainedException origin,
    String context, {
    Map<String, dynamic> vars,
  }) = _ChainedContext;

  @nonVirtual
  Map<String, dynamic> vars() => _vars;

  @override
  @nonVirtual
  String toString() => ChainedExceptionFormatter(this).formatted();

  bool hasOrigin();
  ChainedException origin();
  String message();
}

class _ChainedOrigin extends ChainedException {
  final String _message;
  @override
  const _ChainedOrigin(this._message, {Map<String, dynamic> vars = const {}})
      : super._(vars);

  @override
  String message() => _message;

  @override
  ChainedException origin() => throw ChainedException.origin(
        'This $ChainedException does not have origin.',
      );

  @override
  bool hasOrigin() => false;
}

class _ForeignOrigin extends ChainedException {
  final Object _foreignException;
  final String _context;
  const _ForeignOrigin(
    this._foreignException,
    this._context, {
    Map<String, dynamic> vars = const {},
  }) : super._(vars);

  @override
  String message() => '''
        Message: $_context
        Foreign exception: $_foreignException
        ''';

  @override
  ChainedException origin() => throw ChainedException.origin(
        'This $ChainedException does not have origin. ',
      );

  @override
  bool hasOrigin() => false;
}

class _ChainedContext extends ChainedException {
  final ChainedException _origin;
  final String _context;
  const _ChainedContext(
    this._origin,
    this._context, {
    Map<String, dynamic> vars = const {},
  }) : super._(vars);

  @override
  String message() => _context;

  @override
  ChainedException origin() => _origin;

  @override
  bool hasOrigin() => true;
}
