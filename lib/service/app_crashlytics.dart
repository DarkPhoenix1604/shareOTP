import 'package:flutter/foundation.dart';

abstract class AppCrashlytics {
  const AppCrashlytics();

  // For Testing
  void crash();

  Future<void> setUserIdentifier(String identifier);
  Future<void> log(String message);
  Future<void> recordError(
    dynamic exception,
    StackTrace? stack, {
    dynamic reason,
    Iterable<Object> information = const [],
    bool? printDetails,
    bool fatal = false,
  });

  // For Checking Purpose
  Future<void> deleteUnsentReports();
  Future<void> sendUnsentReports();
  Future<bool> checkForUnsentReports();
  //
  Future<bool> didCrashOnPreviousExecution();

  // FlutterError
  Future<void> recordFlutterFatalError(FlutterErrorDetails flutterErrorDetails);
  Future<void> recordFlutterError(FlutterErrorDetails flutterErrorDetails, {bool fatal = false});

  // Custom
  Future<void> setCustomKey(String key, Object value);
}
