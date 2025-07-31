import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

part 'game_listing_screen_theme_extension.g.dart';

/// [ThemeExtension] of [GameScreen].
@immutable
@myoroThemeExtension
final class GameListingScreenThemeExtension extends ThemeExtension<GameListingScreenThemeExtension>
    with _$GameListingScreenThemeExtensionMixin {
  const GameListingScreenThemeExtension({
    required this.appBarTitleTextStyle,
    required this.menuButtonIconConfiguration,
    required this.bodySuccessStateMargin,
    required this.gameMargin,
    required this.gameBorderRadius,
    required this.gameSpacing,
    required this.gameInfoBarPadding,
    required this.gameBannerMaxHeight,
    required this.gameProfilePictureSize,
    required this.gameNameTextStyle,
    required this.gameSportNameTextStyle,
  });

  GameListingScreenThemeExtension.fake()
    : appBarTitleTextStyle = myoroFake<TextStyle>(),
      menuButtonIconConfiguration = MyoroIconConfiguration.fake(),
      bodySuccessStateMargin = myoroFake<EdgeInsets>(),
      gameMargin = myoroFake<EdgeInsets>(),
      gameBorderRadius = myoroFake<BorderRadius>(),
      gameSpacing = faker.randomGenerator.decimal(scale: 20, min: 5),
      gameInfoBarPadding = myoroFake<EdgeInsets>(),
      gameBannerMaxHeight = faker.randomGenerator.decimal(scale: 300, min: 50),
      gameProfilePictureSize = faker.randomGenerator.decimal(scale: 150, min: 10),
      gameNameTextStyle = myoroFake<TextStyle>(),
      gameSportNameTextStyle = myoroFake<TextStyle>();

  GameListingScreenThemeExtension.builder(ColorScheme colorScheme, TextTheme textTheme)
    : appBarTitleTextStyle = textTheme.titleMedium!,
      menuButtonIconConfiguration = const MyoroIconConfiguration(icon: Icons.menu, size: kSpacing * 6),
      bodySuccessStateMargin = const EdgeInsets.symmetric(horizontal: kEdgeInsetsLength),
      gameMargin = const EdgeInsets.only(bottom: kEdgeInsetsLength),
      gameBorderRadius = BorderRadius.circular(kBorderRadiusLength),
      gameSpacing = kSpacing * 2,
      gameInfoBarPadding = const EdgeInsets.all(kEdgeInsetsLength),
      gameBannerMaxHeight = 96,
      gameProfilePictureSize = 48,
      gameNameTextStyle = textTheme.titleMedium!,
      gameSportNameTextStyle = textTheme.labelSmall!;

  /// [TextStyle] of the title in the app bar.
  final TextStyle appBarTitleTextStyle;

  /// [MyoroIconConfiguration] of [GameScreen]'s menu button in the app bar.
  final MyoroIconConfiguration menuButtonIconConfiguration;

  /// [EdgeInsets] margin of the [Game] listing.
  final EdgeInsets bodySuccessStateMargin;

  /// [EdgeInsets] margin of a [Game] item.
  final EdgeInsets gameMargin;

  /// [BorderRadius] of a [Game] item.
  final BorderRadius gameBorderRadius;

  /// Spacing between the [Widget]s in a [Game] item.
  final double gameSpacing;

  /// [EdgeInsets] of the info bar of a [Game] item.
  final EdgeInsets gameInfoBarPadding;

  /// Maximum height of a [Game]'s banner.
  final double gameBannerMaxHeight;

  /// Size of the [Game]'s profile picture.
  final double gameProfilePictureSize;

  /// [TextStyle] of the name of a [Game] item.
  final TextStyle gameNameTextStyle;

  /// [TextStyle] of the name of the [SportsEnum] of the [Game].
  final TextStyle gameSportNameTextStyle;

  @override
  GameListingScreenThemeExtension lerp(covariant ThemeExtension<GameListingScreenThemeExtension>? other, double t) {
    if (other is! GameListingScreenThemeExtension) return this;
    return copyWith(
      appBarTitleTextStyle: TextStyle.lerp(appBarTitleTextStyle, other.appBarTitleTextStyle, t),
      menuButtonIconConfiguration: MyoroIconConfiguration.lerp(
        menuButtonIconConfiguration,
        other.menuButtonIconConfiguration,
        t,
      ),
      bodySuccessStateMargin: EdgeInsets.lerp(bodySuccessStateMargin, other.bodySuccessStateMargin, t),
      gameMargin: EdgeInsets.lerp(gameMargin, other.gameMargin, t),
      gameBorderRadius: BorderRadius.lerp(gameBorderRadius, other.gameBorderRadius, t),
      gameSpacing: lerpDouble(gameSpacing, other.gameSpacing, t),
      gameInfoBarPadding: EdgeInsets.lerp(gameInfoBarPadding, other.gameInfoBarPadding, t),
      gameBannerMaxHeight: lerpDouble(gameBannerMaxHeight, other.gameBannerMaxHeight, t),
      gameProfilePictureSize: lerpDouble(gameProfilePictureSize, other.gameProfilePictureSize, t),
      gameNameTextStyle: TextStyle.lerp(gameNameTextStyle, other.gameNameTextStyle, t),
      gameSportNameTextStyle: TextStyle.lerp(gameSportNameTextStyle, other.gameSportNameTextStyle, t),
    );
  }
}
