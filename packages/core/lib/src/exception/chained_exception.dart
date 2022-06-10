import 'dart:convert';

import 'package:meta/meta.dart';
import 'package:stack_trace/stack_trace.dart';

part 'chained_exception_formatter.dart';

abstract class ChainedException implements Exception {
  final Map<String, dynamic> _vars;
  final StackTrace _trace;
  ChainedException._(this._vars) : _trace = StackTrace.current;

  /// Creates origin exception
  factory ChainedException.origin(
    String message, {
    Map<String, dynamic> vars,
  }) = _ChainedOrigin;

  /// Creates origin from exception from other library
  factory ChainedException.foreign(
    Object foreignException,
    String context, {
    Map<String, dynamic> vars,
  }) = _ForeignOrigin;

  /// Adds context to previous exception
  factory ChainedException.context(
    ChainedException origin,
    String context, {
    Map<String, dynamic> vars,
  }) = _ChainedContext;

  @nonVirtual
  Map<String, dynamic> vars() => _vars;

  @override
  @nonVirtual
  String toString() => _PrintedChainedException(this).toString();

  /// If this [ChainedException] has origin.
  bool hasOrigin();

  /// Throws if there is no origin.
  /// Use [hasOrigin] to check.
  ChainedException origin();

  /// Problem or context
  String message();
}

class _ChainedOrigin extends ChainedException {
  final String _message;
  @override
  _ChainedOrigin(this._message, {Map<String, dynamic> vars = const {}})
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
  _ForeignOrigin(
    this._foreignException,
    this._context, {
    Map<String, dynamic> vars = const {},
  }) : super._(vars);

  @override
  String message() => '''
$_context
Foreign exception: $_foreignException''';

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
  _ChainedContext(
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
