import 'dart:async';
import 'dart:developer' as dev;

// ignore: avoid_classes_with_only_static_members
class Logger {
  static void log(
    Object message, {
    DateTime? time,
    int? sequenceNumber,
    int level = 0,
    String name = '',
    Zone? zone,
    Object? error,
    StackTrace? stackTrace,
  }) {
    assert(() {
      dev.log(
        "$message",
        time: time,
        error: error,
        level: level,
        name: name,
        sequenceNumber: sequenceNumber,
        stackTrace: stackTrace,
        zone: zone,
      );
      return true;
    }());
  }

  static void logError(
    Object error,
    StackTrace stackTrace, {
    DateTime? time,
    int? sequenceNumber,
    int level = 0,
    String name = '',
    Zone? zone,
    Object? message,
  }) {
    assert(() {
      dev.log(
        "$message",
        time: time,
        error: error,
        level: level,
        name: name,
        sequenceNumber: sequenceNumber,
        stackTrace: stackTrace,
        zone: zone,
      );
      return true;
    }());
  }
}
