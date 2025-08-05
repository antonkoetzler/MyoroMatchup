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
    MyoroIconConfiguration? profileButtonIconConfiguration,
    EdgeInsets? bodySuccessStateMargin,
    EdgeInsets? gameMargin,
    BorderRadius? gameBorderRadius,
    MyoroIconConfiguration? newGameButtonIconConfiguration,
    TextStyle? newGameButtonTextStyle,
    BorderRadius? newGameButtonBorderRadius,
    double? newGameButtonSpacing,
    double? newGameButtonBottomOffset,
  }) {
    return GameListingScreenThemeExtension(
      profileButtonIconConfiguration:
          profileButtonIconConfiguration ?? self.profileButtonIconConfiguration,
      bodySuccessStateMargin:
          bodySuccessStateMargin ?? self.bodySuccessStateMargin,
      gameMargin: gameMargin ?? self.gameMargin,
      gameBorderRadius: gameBorderRadius ?? self.gameBorderRadius,
      newGameButtonIconConfiguration:
          newGameButtonIconConfiguration ?? self.newGameButtonIconConfiguration,
      newGameButtonTextStyle:
          newGameButtonTextStyle ?? self.newGameButtonTextStyle,
      newGameButtonBorderRadius:
          newGameButtonBorderRadius ?? self.newGameButtonBorderRadius,
      newGameButtonSpacing: newGameButtonSpacing ?? self.newGameButtonSpacing,
      newGameButtonBottomOffset:
          newGameButtonBottomOffset ?? self.newGameButtonBottomOffset,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is GameListingScreenThemeExtension &&
        other.runtimeType == runtimeType &&
        other.profileButtonIconConfiguration ==
            self.profileButtonIconConfiguration &&
        other.bodySuccessStateMargin == self.bodySuccessStateMargin &&
        other.gameMargin == self.gameMargin &&
        other.gameBorderRadius == self.gameBorderRadius &&
        other.newGameButtonIconConfiguration ==
            self.newGameButtonIconConfiguration &&
        other.newGameButtonTextStyle == self.newGameButtonTextStyle &&
        other.newGameButtonBorderRadius == self.newGameButtonBorderRadius &&
        other.newGameButtonSpacing == self.newGameButtonSpacing &&
        other.newGameButtonBottomOffset == self.newGameButtonBottomOffset;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.profileButtonIconConfiguration,
      self.bodySuccessStateMargin,
      self.gameMargin,
      self.gameBorderRadius,
      self.newGameButtonIconConfiguration,
      self.newGameButtonTextStyle,
      self.newGameButtonBorderRadius,
      self.newGameButtonSpacing,
      self.newGameButtonBottomOffset,
    );
  }

  @override
  String toString() =>
      'GameListingScreenThemeExtension(\n'
      '  profileButtonIconConfiguration: ${self.profileButtonIconConfiguration},\n'
      '  bodySuccessStateMargin: ${self.bodySuccessStateMargin},\n'
      '  gameMargin: ${self.gameMargin},\n'
      '  gameBorderRadius: ${self.gameBorderRadius},\n'
      '  newGameButtonIconConfiguration: ${self.newGameButtonIconConfiguration},\n'
      '  newGameButtonTextStyle: ${self.newGameButtonTextStyle},\n'
      '  newGameButtonBorderRadius: ${self.newGameButtonBorderRadius},\n'
      '  newGameButtonSpacing: ${self.newGameButtonSpacing},\n'
      '  newGameButtonBottomOffset: ${self.newGameButtonBottomOffset},\n'
      ');';
}
