import 'chained_exception.dart';

class ChainedExceptionFormatter {
  final ChainedException _ex;
  const ChainedExceptionFormatter(this._ex);

  String formatted() {
    final buffer = StringBuffer();
    buffer.writeln();
    buffer.writeln('--------------------- Exception ---------------------');
    buffer.writeln(_ex.message());
    _writeFormattedOrigins(_ex, buffer);
    buffer.writeln('-----------------------------------------------------');
    return buffer.toString();
  }

  void _writeFormattedOrigins(ChainedException parent, StringBuffer output) {
    if (parent.hasOrigin()) {
      final origin = parent.origin();
      output.writeln(' - ${origin.message()}');
      _writeFormattedOrigins(origin, output);
    }
  }
}
