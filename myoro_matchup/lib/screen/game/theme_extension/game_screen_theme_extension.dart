import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

part 'game_screen_theme_extension.g.dart';

/// [ThemeExtension] of [GameScreen].
@immutable
@myoroThemeExtension
final class GameScreenThemeExtension extends ThemeExtension<GameScreenThemeExtension>
    with _$GameScreenThemeExtensionMixin {
  const GameScreenThemeExtension({
    required this.bodyErrorStateTextStyle,
    required this.bodySuccessStateMargin,
    required this.gameMargin,
    required this.gameSpacing,
    required this.gameBannerMaxHeight,
    required this.gameProfilePictureSize,
    required this.gameNameTextStyle,
    required this.gameSportNameTextStyle,
  });

  GameScreenThemeExtension.fake()
    : bodyErrorStateTextStyle = myoroFake<TextStyle>(),
      bodySuccessStateMargin = myoroFake<EdgeInsets>(),
      gameMargin = myoroFake<EdgeInsets>(),
      gameSpacing = faker.randomGenerator.decimal(scale: 20, min: 5),
      gameBannerMaxHeight = faker.randomGenerator.decimal(scale: 300, min: 50),
      gameProfilePictureSize = faker.randomGenerator.decimal(scale: 150, min: 10),
      gameNameTextStyle = myoroFake<TextStyle>(),
      gameSportNameTextStyle = myoroFake<TextStyle>();

  GameScreenThemeExtension.builder(TextTheme textTheme)
    : bodyErrorStateTextStyle = textTheme.headlineMedium!.withColor(MyoroColors.red1),
      bodySuccessStateMargin = const EdgeInsets.symmetric(horizontal: 10),
      gameMargin = const EdgeInsets.only(bottom: 10),
      gameSpacing = 10,
      gameBannerMaxHeight = 100,
      gameProfilePictureSize = 50,
      gameNameTextStyle = textTheme.titleMedium!,
      gameSportNameTextStyle = textTheme.labelSmall!;

  /// [TextStyle] of the error message text.
  final TextStyle bodyErrorStateTextStyle;

  /// [EdgeInsets] margin of the [Game] listing.
  final EdgeInsets bodySuccessStateMargin;

  /// [EdgeInsets] margin of a [Game] item.
  final EdgeInsets gameMargin;

  /// Spacing between the [Widget]s in a [Game] item.
  final double gameSpacing;

  /// Maximum height of a [Game]'s banner.
  final double gameBannerMaxHeight;

  /// Size of the [Game]'s profile picture.
  final double gameProfilePictureSize;

  /// [TextStyle] of the name of a [Game] item.
  final TextStyle gameNameTextStyle;

  /// [TextStyle] of the name of the [SportsEnum] of the [Game].
  final TextStyle gameSportNameTextStyle;

  @override
  GameScreenThemeExtension lerp(covariant ThemeExtension<GameScreenThemeExtension>? other, double t) {
    if (other is! GameScreenThemeExtension) return this;
    return copyWith(
      bodyErrorStateTextStyle: TextStyle.lerp(bodyErrorStateTextStyle, other.bodyErrorStateTextStyle, t),
      bodySuccessStateMargin: EdgeInsets.lerp(bodySuccessStateMargin, other.bodySuccessStateMargin, t),
      gameMargin: EdgeInsets.lerp(gameMargin, other.gameMargin, t),
      gameSpacing: lerpDouble(gameSpacing, other.gameSpacing, t),
      gameBannerMaxHeight: lerpDouble(gameBannerMaxHeight, other.gameBannerMaxHeight, t),
      gameProfilePictureSize: lerpDouble(gameProfilePictureSize, other.gameProfilePictureSize, t),
      gameNameTextStyle: TextStyle.lerp(gameNameTextStyle, other.gameNameTextStyle, t),
      gameSportNameTextStyle: TextStyle.lerp(gameSportNameTextStyle, other.gameSportNameTextStyle, t),
    );
  }
}
