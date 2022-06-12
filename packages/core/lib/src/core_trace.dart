import 'package:stack_trace/stack_trace.dart';

class CoreTrace {
  static Frame get frame => Frame.caller(1);

  /// When using with a Flutter app, this should be put in main.dart
  /// like so:
  /// ```dart
  /// FlutterError.demangleStackTrace = CoreTrace.demangleForFlutter;
  /// ```
  static StackTrace demangleForFlutter(StackTrace stack) {
    if (stack is Trace) {
      return stack.vmTrace;
    }
    if (stack is Chain) {
      return stack.toTrace().vmTrace;
    }
    return stack;
  }
}
