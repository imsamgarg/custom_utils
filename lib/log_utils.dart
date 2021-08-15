import 'dart:async';
import 'dart:developer';
import 'package:flutter/foundation.dart';

void customLog(
  dynamic message, {
  DateTime? time,
  int? sequenceNumber,
  int level = 0,
  String name = '',
  Zone? zone,
  Object? error,
  StackTrace? stackTrace,
  bool onlyInDebug = true,
}) {
  if (kReleaseMode && onlyInDebug)
    log(
      message?.toString() ?? "Null Value",
      error: error,
      level: level,
      name: name,
      sequenceNumber: sequenceNumber,
      stackTrace: stackTrace,
      time: time,
      zone: zone,
    );
}
