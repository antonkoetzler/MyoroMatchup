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
    double? spacing,
    TextStyle? titleTextStyle,
    MyoroIconConfiguration? backButtonIconConfiguration,
  }) {
    return MmAppBarThemeExtension(
      bordered: bordered ?? self.bordered,
      spacing: spacing ?? self.spacing,
      titleTextStyle: titleTextStyle ?? self.titleTextStyle,
      backButtonIconConfiguration: backButtonIconConfiguration ?? self.backButtonIconConfiguration,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MmAppBarThemeExtension &&
        other.runtimeType == runtimeType &&
        other.bordered == self.bordered &&
        other.spacing == self.spacing &&
        other.titleTextStyle == self.titleTextStyle &&
        other.backButtonIconConfiguration == self.backButtonIconConfiguration;
  }

  @override
  int get hashCode {
    return Object.hash(self.bordered, self.spacing, self.titleTextStyle, self.backButtonIconConfiguration);
  }

  @override
  String toString() =>
      'MmAppBarThemeExtension(\n'
      '  bordered: ${self.bordered},\n'
      '  spacing: ${self.spacing},\n'
      '  titleTextStyle: ${self.titleTextStyle},\n'
      '  backButtonIconConfiguration: ${self.backButtonIconConfiguration},\n'
      ');';
}
