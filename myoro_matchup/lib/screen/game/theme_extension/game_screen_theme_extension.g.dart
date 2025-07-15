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
  GameScreenThemeExtension copyWith({
    TextStyle? errorStateTextStyle,
    TextStyle? gameNameTextStyle,
    TextStyle? gameSportNameTextStyle,
  }) {
    return GameScreenThemeExtension(
      errorStateTextStyle: errorStateTextStyle ?? self.errorStateTextStyle,
      gameNameTextStyle: gameNameTextStyle ?? self.gameNameTextStyle,
      gameSportNameTextStyle:
          gameSportNameTextStyle ?? self.gameSportNameTextStyle,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is GameScreenThemeExtension &&
        other.runtimeType == runtimeType &&
        other.errorStateTextStyle == self.errorStateTextStyle &&
        other.gameNameTextStyle == self.gameNameTextStyle &&
        other.gameSportNameTextStyle == self.gameSportNameTextStyle;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.errorStateTextStyle,
      self.gameNameTextStyle,
      self.gameSportNameTextStyle,
    );
  }

  @override
  String toString() =>
      'GameScreenThemeExtension(\n'
      '  errorStateTextStyle: ${self.errorStateTextStyle},\n'
      '  gameNameTextStyle: ${self.gameNameTextStyle},\n'
      '  gameSportNameTextStyle: ${self.gameSportNameTextStyle},\n'
      ');';
}
