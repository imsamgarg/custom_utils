import 'dart:async';
import 'dart:developer' as logger;
import 'package:flutter/foundation.dart';

typedef LoggerService = L;

class L {
  const L._();

  static void log(
    dynamic message, {
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
        name: name ?? '',
        sequenceNumber: sequenceNumber,
        stackTrace: stackTrace,
        time: time,
        zone: zone,
      );
    }
  }

  static void error(
    Object? e,
    StackTrace? s, {
    dynamic message,
    bool onlyInDebug = true,
    DateTime? time,
    int? sequenceNumber,
    int level = 0,
    String? name,
    Zone? zone,
  }) {
    if (!kReleaseMode && onlyInDebug) {
      logger.log(
        message?.toString() ?? "Null Value",
        error: error,
        level: level,
        name: name ?? '',
        sequenceNumber: sequenceNumber,
        stackTrace: s,
        time: time,
        zone: zone,
      );
    }
  }
}
