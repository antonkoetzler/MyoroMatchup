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
    TextStyle? appBarTitleTextStyle,
    TextStyle? bodyErrorStateTextStyle,
    EdgeInsets? bodySuccessStateMargin,
    EdgeInsets? gameMargin,
    BorderRadius? gameBorderRadius,
    double? gameSpacing,
    EdgeInsets? gameInfoBarPadding,
    double? gameBannerMaxHeight,
    double? gameProfilePictureSize,
    TextStyle? gameNameTextStyle,
    TextStyle? gameSportNameTextStyle,
  }) {
    return GameScreenThemeExtension(
      appBarTitleTextStyle: appBarTitleTextStyle ?? self.appBarTitleTextStyle,
      bodyErrorStateTextStyle:
          bodyErrorStateTextStyle ?? self.bodyErrorStateTextStyle,
      bodySuccessStateMargin:
          bodySuccessStateMargin ?? self.bodySuccessStateMargin,
      gameMargin: gameMargin ?? self.gameMargin,
      gameBorderRadius: gameBorderRadius ?? self.gameBorderRadius,
      gameSpacing: gameSpacing ?? self.gameSpacing,
      gameInfoBarPadding: gameInfoBarPadding ?? self.gameInfoBarPadding,
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
        other.appBarTitleTextStyle == self.appBarTitleTextStyle &&
        other.bodyErrorStateTextStyle == self.bodyErrorStateTextStyle &&
        other.bodySuccessStateMargin == self.bodySuccessStateMargin &&
        other.gameMargin == self.gameMargin &&
        other.gameBorderRadius == self.gameBorderRadius &&
        other.gameSpacing == self.gameSpacing &&
        other.gameInfoBarPadding == self.gameInfoBarPadding &&
        other.gameBannerMaxHeight == self.gameBannerMaxHeight &&
        other.gameProfilePictureSize == self.gameProfilePictureSize &&
        other.gameNameTextStyle == self.gameNameTextStyle &&
        other.gameSportNameTextStyle == self.gameSportNameTextStyle;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.appBarTitleTextStyle,
      self.bodyErrorStateTextStyle,
      self.bodySuccessStateMargin,
      self.gameMargin,
      self.gameBorderRadius,
      self.gameSpacing,
      self.gameInfoBarPadding,
      self.gameBannerMaxHeight,
      self.gameProfilePictureSize,
      self.gameNameTextStyle,
      self.gameSportNameTextStyle,
    );
  }

  @override
  String toString() =>
      'GameScreenThemeExtension(\n'
      '  appBarTitleTextStyle: ${self.appBarTitleTextStyle},\n'
      '  bodyErrorStateTextStyle: ${self.bodyErrorStateTextStyle},\n'
      '  bodySuccessStateMargin: ${self.bodySuccessStateMargin},\n'
      '  gameMargin: ${self.gameMargin},\n'
      '  gameBorderRadius: ${self.gameBorderRadius},\n'
      '  gameSpacing: ${self.gameSpacing},\n'
      '  gameInfoBarPadding: ${self.gameInfoBarPadding},\n'
      '  gameBannerMaxHeight: ${self.gameBannerMaxHeight},\n'
      '  gameProfilePictureSize: ${self.gameProfilePictureSize},\n'
      '  gameNameTextStyle: ${self.gameNameTextStyle},\n'
      '  gameSportNameTextStyle: ${self.gameSportNameTextStyle},\n'
      ');';
}
