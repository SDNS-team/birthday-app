import 'package:stack_trace/stack_trace.dart';

class CoreTrace {
  static Frame get frame => Frame.caller(1);
}
