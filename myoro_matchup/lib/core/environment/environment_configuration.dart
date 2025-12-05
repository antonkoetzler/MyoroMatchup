import 'package:myoro_matchup/myoro_matchup.dart';

/// Configuration for the environment.
final class EnvironmentConfiguration {
  static var currentEnvironment = EnvironmentEnum.local;

  static String get apiUrl {
    final baseUrl = switch (currentEnvironment) {
      EnvironmentEnum.local => 'http://10.0.2.2:8080',
      // TODO
      EnvironmentEnum.dev => throw UnimplementedError(),
      // TODO
      EnvironmentEnum.prod => throw UnimplementedError(),
    };
    return '$baseUrl/api';
  }
}
