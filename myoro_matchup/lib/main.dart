import 'package:flutter/material.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

void main() async {
  // Ensure the Flutter binding is initialized.
  WidgetsFlutterBinding.ensureInitialized();

  // Get the environment.
  final environment = EnvironmentEnum.getEnvironment(
    String.fromEnvironment('env', defaultValue: EnvironmentEnum.local.name),
  );
  EnvironmentConfiguration.currentEnvironment = environment;

  // Configure the get it instance.
  await configureGetIt();

  runApp(const App());
}
