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
    IconData? backButtonIcon,
    double? backButtonIconSize,
    IconData? menuButtonIcon,
    double? menuButtonIconSize,
    double? menuDrawerSpacing,
    EdgeInsets? menuDrawerContentPadding,
  }) {
    return MmAppBarThemeExtension(
      bordered: bordered ?? self.bordered,
      titleTextStyle: titleTextStyle ?? self.titleTextStyle,
      backButtonIcon: backButtonIcon ?? self.backButtonIcon,
      backButtonIconSize: backButtonIconSize ?? self.backButtonIconSize,
      menuButtonIcon: menuButtonIcon ?? self.menuButtonIcon,
      menuButtonIconSize: menuButtonIconSize ?? self.menuButtonIconSize,
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
        other.backButtonIcon == self.backButtonIcon &&
        other.backButtonIconSize == self.backButtonIconSize &&
        other.menuButtonIcon == self.menuButtonIcon &&
        other.menuButtonIconSize == self.menuButtonIconSize &&
        other.menuDrawerSpacing == self.menuDrawerSpacing &&
        other.menuDrawerContentPadding == self.menuDrawerContentPadding;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.bordered,
      self.titleTextStyle,
      self.backButtonIcon,
      self.backButtonIconSize,
      self.menuButtonIcon,
      self.menuButtonIconSize,
      self.menuDrawerSpacing,
      self.menuDrawerContentPadding,
    );
  }

  @override
  String toString() =>
      'MmAppBarThemeExtension(\n'
      '  bordered: ${self.bordered},\n'
      '  titleTextStyle: ${self.titleTextStyle},\n'
      '  backButtonIcon: ${self.backButtonIcon},\n'
      '  backButtonIconSize: ${self.backButtonIconSize},\n'
      '  menuButtonIcon: ${self.menuButtonIcon},\n'
      '  menuButtonIconSize: ${self.menuButtonIconSize},\n'
      '  menuDrawerSpacing: ${self.menuDrawerSpacing},\n'
      '  menuDrawerContentPadding: ${self.menuDrawerContentPadding},\n'
      ');';
}
