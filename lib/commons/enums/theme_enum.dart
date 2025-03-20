import 'package:collection/collection.dart';
import 'package:faker/faker.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Stores every available theme of the application.
enum ThemeEnum {
  dark('dark'),
  light('light');

  /// [String] used to store the loaded theme within [SharedPreferences].
  final String identifier;

  const ThemeEnum(this.identifier);

  factory ThemeEnum.fake() {
    return values[faker.randomGenerator.integer(values.length)];
  }

  static ThemeEnum? tryParse(String identifier) {
    return values.firstWhereOrNull(
      (ThemeEnum value) => identifier == value.identifier,
    );
  }

  /// Default theme of the application.
  static const defaultTheme = ThemeEnum.dark;

  bool get isDark => this == dark;
  bool get isLight => this == light;
}
