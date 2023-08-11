import 'dart:async';
import 'dart:developer' as developer;

import 'package:core/core.dart';
import 'package:flutter/foundation.dart';

import '../../ui/ui.dart';

final loggerSubscriptionProvider =
    StateProvider<StreamSubscription?>((ref) => null);

class InitLogging extends StartupHook {
  late final StreamSubscription _logSub;

  StreamSubscription get logSub => _logSub;

  @override
  Future<void> bootstrap() {
    Logger.root.level = Level.ALL;
    _logSub = Logger.root.onRecord.listen((e) {
      // use `dumpErrorToConsole` for severe messages to ensure that severe
      // exceptions are formatted consistently with other Flutter examples and
      // avoids printing duplicate exceptions
      if (e.level >= Level.SEVERE) {
        final Object? error = e.error;
        FlutterError.dumpErrorToConsole(
          FlutterErrorDetails(
            exception: error is Exception ? error : Exception(error),
            stack: e.stackTrace,
            library: e.loggerName,
            context: ErrorDescription(e.message),
          ),
        );
      } else {
        developer.log(
          e.message,
          time: e.time,
          sequenceNumber: e.sequenceNumber,
          level: e.level.value,
          name: e.loggerName,
          zone: e.zone,
          error: e.error,
          stackTrace: e.stackTrace,
        );
      }
    });
    return SynchronousFuture(null);
  }

  @override
  Future<void> dispose() async {
    await _logSub.cancel();
  }
}
