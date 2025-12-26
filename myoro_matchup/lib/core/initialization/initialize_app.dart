import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:myoro_matchup/myoro_matchup.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

/// Initializes the application (excluding Sentry).
Future<void> initializeApp() async {
  /// Log the start of the application initialization.
  MyoroLogger.info('[initializeApp]: Initializing application...');

  // Ensure the Flutter binding is initialized.
  WidgetsFlutterBinding.ensureInitialized();
  MyoroLogger.info('[initializeApp]: Flutter bindings initialized.');

  // Configure the get it instance.
  await configureGetIt();
  MyoroLogger.info('[initializeApp]: Dependency injection configured.');

  // Initialize Supabase.
  final envConfiguration = getIt<MmEnvConfiguration>();
  final supabaseUrl = envConfiguration.supabaseUrl;
  final supabaseAnonKey = envConfiguration.supabaseApiKey;
  await Supabase.initialize(
    url: supabaseUrl,
    anonKey: supabaseAnonKey,
    authOptions: const FlutterAuthClientOptions(authFlowType: AuthFlowType.pkce),
  );
  MyoroLogger.info('[initializeApp]: Supabase initialized.');

  // Run the application.
  runApp(SentryWidget(child: const Root()));
}
