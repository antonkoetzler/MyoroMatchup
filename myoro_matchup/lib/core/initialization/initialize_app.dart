import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:myoro_matchup/myoro_matchup.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

/// Initializes the application (excluding Sentry).
Future<void> initializeApp() async {
  /// Log the start of the application initialization.
  MmLogger.info('[initializeApp]: Initializing application...');

  // Ensure the Flutter binding is initialized.
  WidgetsFlutterBinding.ensureInitialized();
  MmLogger.info('[initializeApp]: Flutter bindings initialized.');

  // Get the environment variables.
  await dotenv.load(fileName: '.env');
  final supabaseUrl = dotenv.env['SUPABASE_URL'] ?? 'http://localhost:54321';
  final supabaseAnonKey = dotenv.env['SUPABASE_ANON_KEY'];
  assert(supabaseAnonKey != null, '[initializeApp]: SUPABASE_ANON_KEY is not set.');

  // Initialize Supabase.
  await Supabase.initialize(url: supabaseUrl, anonKey: supabaseAnonKey!);
  MmLogger.info('[initializeApp]: Supabase initialized.');

  // Configure the get it instance.
  await configureGetIt();
  MmLogger.info('[initializeApp]: Dependency injection configured.');

  // Run the application.
  runApp(SentryWidget(child: const Root()));
}
