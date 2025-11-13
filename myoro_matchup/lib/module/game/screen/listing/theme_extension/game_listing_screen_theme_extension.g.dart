// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_listing_screen_theme_extension.dart';

// **************************************************************************
// MyoroThemeExtensionGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [GameListingScreenThemeExtension] once the code is generated.
///
/// ```dart
/// class GameListingScreenThemeExtension with _$GameListingScreenThemeExtensionMixin {}
/// ```
mixin _$GameListingScreenThemeExtensionMixin on ThemeExtension<GameListingScreenThemeExtension> {
  GameListingScreenThemeExtension get self => this as GameListingScreenThemeExtension;

  @override
  GameListingScreenThemeExtension copyWith({
    EdgeInsets? bodySuccessStateMargin,
    EdgeInsets? gameMargin,
    BorderRadius? gameBorderRadius,
    EdgeInsets? errorStatePadding,
  }) {
    return GameListingScreenThemeExtension(
      bodySuccessStateMargin: bodySuccessStateMargin ?? self.bodySuccessStateMargin,
      gameMargin: gameMargin ?? self.gameMargin,
      gameBorderRadius: gameBorderRadius ?? self.gameBorderRadius,
      errorStatePadding: errorStatePadding ?? self.errorStatePadding,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is GameListingScreenThemeExtension &&
        other.runtimeType == runtimeType &&
        other.bodySuccessStateMargin == self.bodySuccessStateMargin &&
        other.gameMargin == self.gameMargin &&
        other.gameBorderRadius == self.gameBorderRadius &&
        other.errorStatePadding == self.errorStatePadding;
  }

  @override
  int get hashCode {
    return Object.hash(self.bodySuccessStateMargin, self.gameMargin, self.gameBorderRadius, self.errorStatePadding);
  }

  @override
  String toString() =>
      'GameListingScreenThemeExtension(\n'
      '  bodySuccessStateMargin: ${self.bodySuccessStateMargin},\n'
      '  gameMargin: ${self.gameMargin},\n'
      '  gameBorderRadius: ${self.gameBorderRadius},\n'
      '  errorStatePadding: ${self.errorStatePadding},\n'
      ');';
}
