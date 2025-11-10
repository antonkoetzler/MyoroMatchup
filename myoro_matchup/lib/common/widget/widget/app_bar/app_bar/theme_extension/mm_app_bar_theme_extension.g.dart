// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mm_app_bar_theme_extension.dart';

// **************************************************************************
// MyoroThemeExtensionGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MmAppBarThemeExtension] once the code is generated.
///
/// ```dart
/// class MmAppBarThemeExtension with _$MmAppBarThemeExtensionMixin {}
/// ```
mixin _$MmAppBarThemeExtensionMixin on ThemeExtension<MmAppBarThemeExtension> {
  MmAppBarThemeExtension get self => this as MmAppBarThemeExtension;

  @override
  MmAppBarThemeExtension copyWith({
    bool? bordered,
    TextStyle? titleTextStyle,
    MyoroIconConfiguration? backButtonIconConfiguration,
    MyoroIconConfiguration? menuButtonIconConfiguration,
    double? menuDrawerSpacing,
    EdgeInsets? menuDrawerContentPadding,
  }) {
    return MmAppBarThemeExtension(
      bordered: bordered ?? self.bordered,
      titleTextStyle: titleTextStyle ?? self.titleTextStyle,
      backButtonIconConfiguration: backButtonIconConfiguration ?? self.backButtonIconConfiguration,
      menuButtonIconConfiguration: menuButtonIconConfiguration ?? self.menuButtonIconConfiguration,
      menuDrawerSpacing: menuDrawerSpacing ?? self.menuDrawerSpacing,
      menuDrawerContentPadding: menuDrawerContentPadding ?? self.menuDrawerContentPadding,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MmAppBarThemeExtension &&
        other.runtimeType == runtimeType &&
        other.bordered == self.bordered &&
        other.titleTextStyle == self.titleTextStyle &&
        other.backButtonIconConfiguration == self.backButtonIconConfiguration &&
        other.menuButtonIconConfiguration == self.menuButtonIconConfiguration &&
        other.menuDrawerSpacing == self.menuDrawerSpacing &&
        other.menuDrawerContentPadding == self.menuDrawerContentPadding;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.bordered,
      self.titleTextStyle,
      self.backButtonIconConfiguration,
      self.menuButtonIconConfiguration,
      self.menuDrawerSpacing,
      self.menuDrawerContentPadding,
    );
  }

  @override
  String toString() =>
      'MmAppBarThemeExtension(\n'
      '  bordered: ${self.bordered},\n'
      '  titleTextStyle: ${self.titleTextStyle},\n'
      '  backButtonIconConfiguration: ${self.backButtonIconConfiguration},\n'
      '  menuButtonIconConfiguration: ${self.menuButtonIconConfiguration},\n'
      '  menuDrawerSpacing: ${self.menuDrawerSpacing},\n'
      '  menuDrawerContentPadding: ${self.menuDrawerContentPadding},\n'
      ');';
}
