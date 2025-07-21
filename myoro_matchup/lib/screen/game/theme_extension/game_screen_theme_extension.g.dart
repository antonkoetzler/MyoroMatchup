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
    TextStyle? bodyErrorStateTextStyle,
    EdgeInsets? bodySuccessStateMargin,
    EdgeInsets? gameMargin,
    double? gameSpacing,
    double? gameBannerMaxHeight,
    double? gameProfilePictureSize,
    TextStyle? gameNameTextStyle,
    TextStyle? gameSportNameTextStyle,
  }) {
    return GameScreenThemeExtension(
      bodyErrorStateTextStyle:
          bodyErrorStateTextStyle ?? self.bodyErrorStateTextStyle,
      bodySuccessStateMargin:
          bodySuccessStateMargin ?? self.bodySuccessStateMargin,
      gameMargin: gameMargin ?? self.gameMargin,
      gameSpacing: gameSpacing ?? self.gameSpacing,
      gameBannerMaxHeight: gameBannerMaxHeight ?? self.gameBannerMaxHeight,
      gameProfilePictureSize:
          gameProfilePictureSize ?? self.gameProfilePictureSize,
      gameNameTextStyle: gameNameTextStyle ?? self.gameNameTextStyle,
      gameSportNameTextStyle:
          gameSportNameTextStyle ?? self.gameSportNameTextStyle,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is GameScreenThemeExtension &&
        other.runtimeType == runtimeType &&
        other.bodyErrorStateTextStyle == self.bodyErrorStateTextStyle &&
        other.bodySuccessStateMargin == self.bodySuccessStateMargin &&
        other.gameMargin == self.gameMargin &&
        other.gameSpacing == self.gameSpacing &&
        other.gameBannerMaxHeight == self.gameBannerMaxHeight &&
        other.gameProfilePictureSize == self.gameProfilePictureSize &&
        other.gameNameTextStyle == self.gameNameTextStyle &&
        other.gameSportNameTextStyle == self.gameSportNameTextStyle;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.bodyErrorStateTextStyle,
      self.bodySuccessStateMargin,
      self.gameMargin,
      self.gameSpacing,
      self.gameBannerMaxHeight,
      self.gameProfilePictureSize,
      self.gameNameTextStyle,
      self.gameSportNameTextStyle,
    );
  }

  @override
  String toString() =>
      'GameScreenThemeExtension(\n'
      '  bodyErrorStateTextStyle: ${self.bodyErrorStateTextStyle},\n'
      '  bodySuccessStateMargin: ${self.bodySuccessStateMargin},\n'
      '  gameMargin: ${self.gameMargin},\n'
      '  gameSpacing: ${self.gameSpacing},\n'
      '  gameBannerMaxHeight: ${self.gameBannerMaxHeight},\n'
      '  gameProfilePictureSize: ${self.gameProfilePictureSize},\n'
      '  gameNameTextStyle: ${self.gameNameTextStyle},\n'
      '  gameSportNameTextStyle: ${self.gameSportNameTextStyle},\n'
      ');';
}
