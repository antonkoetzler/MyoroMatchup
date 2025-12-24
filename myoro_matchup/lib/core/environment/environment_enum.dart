/// Enum encapsulating the environments that the app can run in.
enum EnvironmentEnum {
  /// Local.
  local,

  /// Production.
  prod;

  /// Parse from string.
  static EnvironmentEnum tryParse(String environment) {
    return values.firstWhere((v) => v.name == environment, orElse: () => EnvironmentEnum.local);
  }
}
