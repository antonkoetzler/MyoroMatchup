import 'package:myoro_matchup/myoro_matchup.dart';

/// Configuration for the environment.
final class EnvironmentConfiguration {
  static EnvironmentEnum currentEnvironment = EnvironmentEnum.local;

  static String get apiUrl {
    final baseUrl = switch (currentEnvironment) {
      EnvironmentEnum.local => 'http://localhost:8080',
    };
    return '$baseUrl/api/';
  }
}
