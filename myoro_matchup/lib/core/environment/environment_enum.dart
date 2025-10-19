/// Enum encapsulating the environments that the app can run in.
enum EnvironmentEnum {
  /// Local.
  local,

  /// Development.
  dev,

  /// Production.
  prod;

  static EnvironmentEnum getEnvironment(String environment) {
    return values.firstWhere((v) => v.name == environment, orElse: () => EnvironmentEnum.local);
  }
}
