import 'package:myoro_matchup/myoro_matchup.dart';

/// Configuration for the environment.
final class EnvironmentConfiguration {
  /// Current environment.
  static var currentEnvironment = EnvironmentEnum.local;

  /// API URL getter.
  static String get apiUrl {
    final baseUrl = switch (currentEnvironment) {
      EnvironmentEnum.local => 'http://10.0.2.2:8080',
      // TODO
      EnvironmentEnum.prod => throw UnimplementedError(),
    };
    return '$baseUrl/api';
  }
}
