part of 'chained_exception.dart';

class _ChainedExceptionFormatter {
  final ChainedException _ex;

  const _ChainedExceptionFormatter(this._ex);

  String formatted() {
    final buffer = StringBuffer();
    buffer.writeln();
    buffer.writeln('--------------------- Exception ---------------------');
    _writeFormattedOrigins(_ex.asParent(), buffer);
    buffer.writeln('-----------------------------------------------------');
    return buffer.toString();
  }

  void _writeFormattedOrigins(
    ChainedException parent,
    StringBuffer output, [
    int indent = 0,
  ]) {
    if (parent.hasOrigin()) {
      final prefix = '${'██' * indent}>';
      void printPrefixed(String str) => output.writeln('$prefix$str');

      final origin = parent.origin();
      origin.message().split('\n').forEach(printPrefixed);
      printPrefixed('');
      final json = const JsonEncoder.withIndent('  ')
          .convert(origin.vars())
          .split('\n')
        ..removeWhere((s) => s == '{' || s == '}');

      if (json.first != '{}') {
        printPrefixed('Vars:');
        json.forEach(printPrefixed);
        printPrefixed('');
      }

      printPrefixed('Trace:');
      Trace.format(origin._trace)
          .split('\n')
          .skip(2)
          .take(2)
          .where((s) => s.isNotEmpty)
          .forEach(printPrefixed);

      if (origin.hasOrigin()) {
        output.writeln('');
      }

      _writeFormattedOrigins(origin, output, indent + 1);
    }
  }
}

extension _AsParent on ChainedException {
  /// Represent current exception as origin for consistent printing
  ChainedException asParent() => ChainedException.context(this, '');
}
