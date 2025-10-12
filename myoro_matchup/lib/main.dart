import 'package:flutter/material.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

void main() async {
  // Get the environment.
  final environment = EnvironmentEnum.getEnvironment(String.fromEnvironment('env', defaultValue: EnvironmentEnum.local.name));
  EnvironmentConfiguration.currentEnvironment = environment;

  // Configure the get it instance.
  configureGetIt();

  // Initialize the app router.
  await getIt<AppRouter>().init();

  // Run the app.
  runApp(const Root());
}
