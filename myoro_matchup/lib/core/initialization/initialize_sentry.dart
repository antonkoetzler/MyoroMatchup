import 'package:myoro_matchup/myoro_matchup.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

/// Initializes Sentry.
Future<void> initializeSentry() async {
  MmLogger.info('[initializeSentry]: Initializing Sentry...');

  return await SentryFlutter.init(
    (options) {
      // Sentry options.
      options
        // The DSN tells the SDK where to send the events.
        ..dsn = 'https://e1110c4b76f1213ca6a6aaf7a7346373@o4508619766366208.ingest.us.sentry.io/4510480565796864'
        // Adds request headers and IP for users, for more info visit:
        // https://docs.sentry.io/platforms/dart/guides/flutter/data-management/data-collected/
        ..sendDefaultPii = true
        // Set tracesSampleRate to 1.0 to capture 100% of transactions for tracing.
        // We recommend adjusting this value in production.
        ..tracesSampleRate = 1.0;

      MmLogger.info('[initializeSentry]: Sentry configured.');
    },
    appRunner: () async {
      return await initializeApp();
    },
  );
}
