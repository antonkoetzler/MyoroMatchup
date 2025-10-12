/// Enum encapsulating the environments that the app can run in.
enum EnvironmentEnum {
  /// Local.
  local;

  static EnvironmentEnum getEnvironment(String environment) {
    return values.firstWhere(
      (v) => v.name == environment,
      orElse: () => throw Exception('[EnvironmentEnum.getEnvironment]: Invalid environment: $environment'),
    );
  }
}
