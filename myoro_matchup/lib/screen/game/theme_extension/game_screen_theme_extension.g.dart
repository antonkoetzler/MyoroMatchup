// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_screen_theme_extension.dart';

// **************************************************************************
// MyoroThemeExtensionGenerator
// **************************************************************************

/// Apply this mixin to [GameScreenThemeExtension] once the code is generated.
///
/// ```dart
/// class GameScreenThemeExtension with _$GameScreenThemeExtensionMixin {}
/// ```
mixin _$GameScreenThemeExtensionMixin
    on ThemeExtension<GameScreenThemeExtension> {
  GameScreenThemeExtension get self => this as GameScreenThemeExtension;

  @override
  GameScreenThemeExtension copyWith({TextStyle? errorStateTextStyle}) {
    return GameScreenThemeExtension(
      errorStateTextStyle: errorStateTextStyle ?? self.errorStateTextStyle,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is GameScreenThemeExtension &&
        other.runtimeType == runtimeType &&
        other.errorStateTextStyle == self.errorStateTextStyle;
  }

  @override
  int get hashCode {
    return Object.hashAll([self.errorStateTextStyle]);
  }

  @override
  String toString() =>
      'GameScreenThemeExtension(\n'
      '  errorStateTextStyle: ${self.errorStateTextStyle},\n'
      ');';
}
