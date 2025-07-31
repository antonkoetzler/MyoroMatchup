// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_listing_screen_theme_extension.dart';

// **************************************************************************
// MyoroThemeExtensionGenerator
// **************************************************************************

/// Apply this mixin to [GameListingScreenThemeExtension] once the code is generated.
///
/// ```dart
/// class GameListingScreenThemeExtension with _$GameListingScreenThemeExtensionMixin {}
/// ```
mixin _$GameListingScreenThemeExtensionMixin
    on ThemeExtension<GameListingScreenThemeExtension> {
  GameListingScreenThemeExtension get self =>
      this as GameListingScreenThemeExtension;

  @override
  GameListingScreenThemeExtension copyWith({
    TextStyle? appBarTitleTextStyle,
    MyoroIconConfiguration? menuButtonIconConfiguration,
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
    return GameListingScreenThemeExtension(
      appBarTitleTextStyle: appBarTitleTextStyle ?? self.appBarTitleTextStyle,
      menuButtonIconConfiguration:
          menuButtonIconConfiguration ?? self.menuButtonIconConfiguration,
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
    return other is GameListingScreenThemeExtension &&
        other.runtimeType == runtimeType &&
        other.appBarTitleTextStyle == self.appBarTitleTextStyle &&
        other.menuButtonIconConfiguration == self.menuButtonIconConfiguration &&
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
      self.menuButtonIconConfiguration,
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
      'GameListingScreenThemeExtension(\n'
      '  appBarTitleTextStyle: ${self.appBarTitleTextStyle},\n'
      '  menuButtonIconConfiguration: ${self.menuButtonIconConfiguration},\n'
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
