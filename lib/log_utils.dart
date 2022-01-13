import 'dart:async';
import 'dart:developer' as logger;
import 'package:flutter/foundation.dart';

class L {
  const L._();

  static void log(
    dynamic message,
    dynamic object, {
    DateTime? time,
    int? sequenceNumber,
    int level = 0,
    String? name,
    Zone? zone,
    Object? error,
    StackTrace? stackTrace,
    bool onlyInDebug = true,
  }) {
    if (!kReleaseMode && onlyInDebug) {
      logger.log(
        message?.toString() ?? "Null Value",
        error: error,
        level: level,
        name: name ?? object.toString(),
        sequenceNumber: sequenceNumber,
        stackTrace: stackTrace,
        time: time,
        zone: zone,
      );
    }
  }
}
