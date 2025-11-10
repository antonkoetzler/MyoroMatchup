// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mm_location_input_theme_extension.dart';

// **************************************************************************
// MyoroThemeExtensionGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MmLocationInputThemeExtension] once the code is generated.
///
/// ```dart
/// class MmLocationInputThemeExtension with _$MmLocationInputThemeExtensionMixin {}
/// ```
mixin _$MmLocationInputThemeExtensionMixin on ThemeExtension<MmLocationInputThemeExtension> {
  MmLocationInputThemeExtension get self => this as MmLocationInputThemeExtension;

  @override
  MmLocationInputThemeExtension copyWith({
    TextStyle? itemNameTextStyle,
    bool itemNameTextStyleProvided = true,
    TextStyle? itemCityCountryTextStyle,
    bool itemCityCountryTextStyleProvided = true,
  }) {
    return MmLocationInputThemeExtension(
      itemNameTextStyle: itemNameTextStyleProvided ? (itemNameTextStyle ?? self.itemNameTextStyle) : null,
      itemCityCountryTextStyle: itemCityCountryTextStyleProvided
          ? (itemCityCountryTextStyle ?? self.itemCityCountryTextStyle)
          : null,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MmLocationInputThemeExtension &&
        other.runtimeType == runtimeType &&
        other.itemNameTextStyle == self.itemNameTextStyle &&
        other.itemCityCountryTextStyle == self.itemCityCountryTextStyle;
  }

  @override
  int get hashCode {
    return Object.hash(self.itemNameTextStyle, self.itemCityCountryTextStyle);
  }

  @override
  String toString() =>
      'MmLocationInputThemeExtension(\n'
      '  itemNameTextStyle: ${self.itemNameTextStyle},\n'
      '  itemCityCountryTextStyle: ${self.itemCityCountryTextStyle},\n'
      ');';
}
