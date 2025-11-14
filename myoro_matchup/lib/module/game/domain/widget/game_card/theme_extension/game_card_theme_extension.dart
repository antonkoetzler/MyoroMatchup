import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

part 'game_card_theme_extension.g.dart';

/// [ThemeExtension] of [GameCard].
@immutable
@myoroThemeExtension
final class GameCardThemeExtension extends ThemeExtension<GameCardThemeExtension> with _$GameCardThemeExtensionMixin {
  const GameCardThemeExtension({
    required this.bannerMaxHeight,
    required this.bannerDecoration,
    required this.profilePictureBorderRadius,
    required this.profilePictureSize,
    required this.infoBarPadding,
    required this.infoBarSpacing,
    required this.gameNameTextStyle,
    required this.sportNameTextStyle,
    required this.profilePictureBorder,
    required this.logoPadding,
    required this.logoSize,
  });

  GameCardThemeExtension.fake()
    : bannerMaxHeight = faker.randomGenerator.decimal(scale: 300, min: 50),
      bannerDecoration = myoroFake<BoxDecoration>(),
      profilePictureBorderRadius = myoroFake<BorderRadius>(),
      profilePictureSize = faker.randomGenerator.decimal(scale: 150, min: 10),
      infoBarPadding = myoroFake<EdgeInsets>(),
      infoBarSpacing = faker.randomGenerator.decimal(scale: 20),
      gameNameTextStyle = myoroFake<TextStyle>(),
      sportNameTextStyle = myoroFake<TextStyle>(),
      profilePictureBorder = myoroFake<Border>(),
      logoPadding = myoroFake<EdgeInsets>(),
      logoSize = faker.randomGenerator.decimal(scale: 100, min: 10);

  GameCardThemeExtension.builder(ColorScheme colorScheme, TextTheme textTheme)
    : bannerMaxHeight = kMyoroMultiplier * 24,
      bannerDecoration = BoxDecoration(
        gradient: RadialGradient(
          center: Alignment.center,
          radius: 1.5,
          colors: [
            Colors.transparent,
            colorScheme.primary.withValues(alpha: 0.02),
            colorScheme.primary.withValues(alpha: 0.08),
            colorScheme.primary.withValues(alpha: 0.15),
          ],
          stops: const [0.0, 0.3, 0.6, 1.0],
        ),
      ),
      profilePictureBorderRadius = BorderRadius.circular(kMyoroBorderRadius),
      profilePictureSize = kMyoroMultiplier * 12,
      infoBarPadding = const EdgeInsets.all(kEdgeInsetsLength),
      infoBarSpacing = kMyoroMultiplier * 2,
      gameNameTextStyle = textTheme.titleMedium!,
      sportNameTextStyle = textTheme.labelSmall!,
      profilePictureBorder = Border.all(color: colorScheme.primary, width: kMyoroBorderWidth),
      logoPadding = const EdgeInsets.all(kMyoroMultiplier),
      logoSize = kMyoroMultiplier * 11;

  /// Banner's max height.
  final double bannerMaxHeight;

  /// [BoxDecoration] of the banner.
  final BoxDecoration bannerDecoration;

  /// Profile picture's [BorderRadius].
  final BorderRadius profilePictureBorderRadius;

  /// Profile picture's size.
  final double profilePictureSize;

  /// Padding of the info bar.
  final EdgeInsets infoBarPadding;

  /// Spacing of the content of the info bar.
  final double infoBarSpacing;

  /// [TextStyle] of the [Game]'s name.
  final TextStyle gameNameTextStyle;

  /// [TextStyle] of the [Game]'s sport name.
  final TextStyle sportNameTextStyle;

  /// [Border] of the profile picture.
  final Border profilePictureBorder;

  /// [EdgeInsets] of the logo padding.
  final EdgeInsets logoPadding;

  /// Size of the logo.
  final double logoSize;

  @override
  GameCardThemeExtension lerp(covariant ThemeExtension<GameCardThemeExtension>? other, double t) {
    if (other is! GameCardThemeExtension) return this;
    return copyWith(
      bannerMaxHeight: lerpDouble(bannerMaxHeight, other.bannerMaxHeight, t),
      bannerDecoration: BoxDecoration.lerp(bannerDecoration, other.bannerDecoration, t),
      profilePictureBorderRadius: BorderRadius.lerp(profilePictureBorderRadius, other.profilePictureBorderRadius, t),
      profilePictureSize: lerpDouble(profilePictureSize, other.profilePictureSize, t),
      infoBarPadding: EdgeInsets.lerp(infoBarPadding, other.infoBarPadding, t),
      infoBarSpacing: lerpDouble(infoBarSpacing, other.infoBarSpacing, t),
      gameNameTextStyle: TextStyle.lerp(gameNameTextStyle, other.gameNameTextStyle, t),
      sportNameTextStyle: TextStyle.lerp(sportNameTextStyle, other.sportNameTextStyle, t),
      profilePictureBorder: Border.lerp(profilePictureBorder, other.profilePictureBorder, t),
      logoPadding: EdgeInsets.lerp(logoPadding, other.logoPadding, t),
      logoSize: lerpDouble(logoSize, other.logoSize, t),
    );
  }
}
