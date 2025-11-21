// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_card_theme_extension.dart';

// **************************************************************************
// MyoroThemeExtensionGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [GameCardThemeExtension] once the code is generated.
///
/// ```dart
/// class GameCardThemeExtension with _$GameCardThemeExtensionMixin {}
/// ```
mixin _$GameCardThemeExtensionMixin on ThemeExtension<GameCardThemeExtension> {
  GameCardThemeExtension get self => this as GameCardThemeExtension;

  @override
  GameCardThemeExtension copyWith({
    double? bannerMaxHeight,
    BoxDecoration? bannerDecoration,
    BorderRadius? profilePictureBorderRadius,
    double? profilePictureSize,
    EdgeInsets? infoBarPadding,
    double? infoBarSpacing,
    TextStyle? gameNameTextStyle,
    TextStyle? sportNameTextStyle,
    Border? profilePictureBorder,
    EdgeInsets? logoPadding,
    double? logoSize,
    EdgeInsets? bannerlessGameContentPadding,
  }) {
    return GameCardThemeExtension(
      bannerMaxHeight: bannerMaxHeight ?? self.bannerMaxHeight,
      bannerDecoration: bannerDecoration ?? self.bannerDecoration,
      profilePictureBorderRadius: profilePictureBorderRadius ?? self.profilePictureBorderRadius,
      profilePictureSize: profilePictureSize ?? self.profilePictureSize,
      infoBarPadding: infoBarPadding ?? self.infoBarPadding,
      infoBarSpacing: infoBarSpacing ?? self.infoBarSpacing,
      gameNameTextStyle: gameNameTextStyle ?? self.gameNameTextStyle,
      sportNameTextStyle: sportNameTextStyle ?? self.sportNameTextStyle,
      profilePictureBorder: profilePictureBorder ?? self.profilePictureBorder,
      logoPadding: logoPadding ?? self.logoPadding,
      logoSize: logoSize ?? self.logoSize,
      bannerlessGameContentPadding: bannerlessGameContentPadding ?? self.bannerlessGameContentPadding,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is GameCardThemeExtension &&
        other.runtimeType == runtimeType &&
        other.bannerMaxHeight == self.bannerMaxHeight &&
        other.bannerDecoration == self.bannerDecoration &&
        other.profilePictureBorderRadius == self.profilePictureBorderRadius &&
        other.profilePictureSize == self.profilePictureSize &&
        other.infoBarPadding == self.infoBarPadding &&
        other.infoBarSpacing == self.infoBarSpacing &&
        other.gameNameTextStyle == self.gameNameTextStyle &&
        other.sportNameTextStyle == self.sportNameTextStyle &&
        other.profilePictureBorder == self.profilePictureBorder &&
        other.logoPadding == self.logoPadding &&
        other.logoSize == self.logoSize &&
        other.bannerlessGameContentPadding == self.bannerlessGameContentPadding;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.bannerMaxHeight,
      self.bannerDecoration,
      self.profilePictureBorderRadius,
      self.profilePictureSize,
      self.infoBarPadding,
      self.infoBarSpacing,
      self.gameNameTextStyle,
      self.sportNameTextStyle,
      self.profilePictureBorder,
      self.logoPadding,
      self.logoSize,
      self.bannerlessGameContentPadding,
    );
  }

  @override
  String toString() =>
      'GameCardThemeExtension(\n'
      '  bannerMaxHeight: ${self.bannerMaxHeight},\n'
      '  bannerDecoration: ${self.bannerDecoration},\n'
      '  profilePictureBorderRadius: ${self.profilePictureBorderRadius},\n'
      '  profilePictureSize: ${self.profilePictureSize},\n'
      '  infoBarPadding: ${self.infoBarPadding},\n'
      '  infoBarSpacing: ${self.infoBarSpacing},\n'
      '  gameNameTextStyle: ${self.gameNameTextStyle},\n'
      '  sportNameTextStyle: ${self.sportNameTextStyle},\n'
      '  profilePictureBorder: ${self.profilePictureBorder},\n'
      '  logoPadding: ${self.logoPadding},\n'
      '  logoSize: ${self.logoSize},\n'
      '  bannerlessGameContentPadding: ${self.bannerlessGameContentPadding},\n'
      ');';
}
