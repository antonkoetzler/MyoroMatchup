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
    TextStyle? itemCityCountryTextStyle,
    EdgeInsets? itemDividerPadding,
  }) {
    return MmLocationInputThemeExtension(
      itemNameTextStyle: itemNameTextStyle ?? self.itemNameTextStyle,
      itemCityCountryTextStyle: itemCityCountryTextStyle ?? self.itemCityCountryTextStyle,
      itemDividerPadding: itemDividerPadding ?? self.itemDividerPadding,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MmLocationInputThemeExtension &&
        other.runtimeType == runtimeType &&
        other.itemNameTextStyle == self.itemNameTextStyle &&
        other.itemCityCountryTextStyle == self.itemCityCountryTextStyle &&
        other.itemDividerPadding == self.itemDividerPadding;
  }

  @override
  int get hashCode {
    return Object.hash(self.itemNameTextStyle, self.itemCityCountryTextStyle, self.itemDividerPadding);
  }

  @override
  String toString() =>
      'MmLocationInputThemeExtension(\n'
      '  itemNameTextStyle: ${self.itemNameTextStyle},\n'
      '  itemCityCountryTextStyle: ${self.itemCityCountryTextStyle},\n'
      '  itemDividerPadding: ${self.itemDividerPadding},\n'
      ');';
}
