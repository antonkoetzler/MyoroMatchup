import 'package:flutter/material.dart';
import 'package:myoro_matchup/myoro_matchup.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

/// Initializes the application (excluding Sentry).
Future<void> initializeApp() async {
  MmLogger.info('[initializeApp]: Initializing application...');

  // Ensure the Flutter binding is initialized.
  WidgetsFlutterBinding.ensureInitialized();
  MmLogger.success('[initializeApp]: Flutter bindings initialized.');

  // Get the environment.
  final environment = EnvironmentEnum.getEnvironment(
    String.fromEnvironment('env', defaultValue: EnvironmentEnum.local.name),
  );
  EnvironmentConfiguration.currentEnvironment = environment;
  MmLogger.info('[initializeApp]: Environment set to: ${environment.name}.');

  // Configure the get it instance.
  MmLogger.info('[initializeApp]: Configuring dependency injection...');
  await configureGetIt();
  MmLogger.success('[initializeApp]: Dependency injection configured.');

  // Run the application.
  MmLogger.info('[initializeApp]: Starting application...');
  runApp(SentryWidget(child: const Root()));
  MmLogger.success('[initializeApp]: Application started.');
}
