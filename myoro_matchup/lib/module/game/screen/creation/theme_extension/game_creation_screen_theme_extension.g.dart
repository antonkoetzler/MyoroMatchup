// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_creation_screen_theme_extension.dart';

// **************************************************************************
// MyoroThemeExtensionGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [GameCreationScreenThemeExtension] once the code is generated.
///
/// ```dart
/// class GameCreationScreenThemeExtension with _$GameCreationScreenThemeExtensionMixin {}
/// ```
mixin _$GameCreationScreenThemeExtensionMixin on ThemeExtension<GameCreationScreenThemeExtension> {
  GameCreationScreenThemeExtension get self => this as GameCreationScreenThemeExtension;

  @override
  GameCreationScreenThemeExtension copyWith({
    double? spacing,
    TextStyle? titleTextStyle,
    EdgeInsets? bodyPadding,
    TextStyle? buttonTextStyle,
  }) {
    return GameCreationScreenThemeExtension(
      spacing: spacing ?? self.spacing,
      titleTextStyle: titleTextStyle ?? self.titleTextStyle,
      bodyPadding: bodyPadding ?? self.bodyPadding,
      buttonTextStyle: buttonTextStyle ?? self.buttonTextStyle,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is GameCreationScreenThemeExtension &&
        other.runtimeType == runtimeType &&
        other.spacing == self.spacing &&
        other.titleTextStyle == self.titleTextStyle &&
        other.bodyPadding == self.bodyPadding &&
        other.buttonTextStyle == self.buttonTextStyle;
  }

  @override
  int get hashCode {
    return Object.hash(self.spacing, self.titleTextStyle, self.bodyPadding, self.buttonTextStyle);
  }

  @override
  String toString() =>
      'GameCreationScreenThemeExtension(\n'
      '  spacing: ${self.spacing},\n'
      '  titleTextStyle: ${self.titleTextStyle},\n'
      '  bodyPadding: ${self.bodyPadding},\n'
      '  buttonTextStyle: ${self.buttonTextStyle},\n'
      ');';
}
