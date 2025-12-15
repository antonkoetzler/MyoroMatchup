import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

/// Logger service for the application.
///
/// Provides static methods for logging at different levels:
/// - [info]: For informational messages
/// - [warning]: For warnings that don't break functionality
/// - [error]: For errors that need attention
///
/// Errors are automatically sent to Sentry.
@singleton
final class MmLogger {
  /// Default constructor.
  MmLogger();

  /// Internal logger instance.
  static Logger? _logger;

  /// Gets the logger instance.
  static Logger get _instance {
    _logger ??= Logger(
      printer: PrettyPrinter(
        methodCount: 2,
        errorMethodCount: 8,
        lineLength: 120,
        colors: true,
        printEmojis: false,
        noBoxingByDefault: false,
        stackTraceBeginIndex: 0,
      ),
      level: Level.all,
    );
    return _logger!;
  }

  /// Logs an informational message.
  static void info(String message, [dynamic error, StackTrace? stackTrace]) {
    _instance.i('ℹ️ $message', error: error, stackTrace: stackTrace);
  }

  /// Logs a warning message.
  static void warning(String message, [dynamic error, StackTrace? stackTrace]) {
    _instance.w('⚠️ $message', error: error, stackTrace: stackTrace);
  }

  /// Logs an error message and sends it to Sentry.
  ///
  /// The [message] should be formatted as "[ClassName.FunctionName]: message."
  static Future<void> error(String message, [dynamic error, StackTrace? stackTrace]) async {
    _instance.e('❌ $message', error: error, stackTrace: stackTrace);

    // Send to Sentry if error is provided.
    if (error != null) {
      await Sentry.captureException(error, stackTrace: stackTrace, hint: Hint.withMap({'message': message}));
    } else {
      // Send message as breadcrumb if no error object.
      await Sentry.captureMessage(message, level: SentryLevel.error);
    }
  }
}
