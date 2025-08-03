import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

part 'game_listing_screen_theme_extension.g.dart';

/// [ThemeExtension] of [GameListingScreen].
@immutable
@myoroThemeExtension
final class GameListingScreenThemeExtension extends ThemeExtension<GameListingScreenThemeExtension>
    with _$GameListingScreenThemeExtensionMixin {
  const GameListingScreenThemeExtension({
    required this.profileButtonIconConfiguration,
    required this.bodySuccessStateMargin,
    required this.gameMargin,
    required this.gameBorderRadius,
    required this.newGameButtonIconConfiguration,
    required this.newGameButtonTextStyle,
    required this.newGameButtonBorderRadius,
    required this.newGameButtonSpacing,
    required this.newGameButtonOffset,
  });

  GameListingScreenThemeExtension.fake()
    : profileButtonIconConfiguration = MyoroIconConfiguration.fake(),
      bodySuccessStateMargin = myoroFake<EdgeInsets>(),
      gameMargin = myoroFake<EdgeInsets>(),
      gameBorderRadius = myoroFake<BorderRadius>(),
      newGameButtonIconConfiguration = MyoroIconConfiguration.fake(),
      newGameButtonTextStyle = myoroFake<TextStyle>(),
      newGameButtonBorderRadius = myoroFake<BorderRadius>(),
      newGameButtonSpacing = faker.randomGenerator.decimal(scale: 20),
      newGameButtonOffset = Offset(faker.randomGenerator.decimal(scale: 20), faker.randomGenerator.decimal(scale: 20));

  GameListingScreenThemeExtension.builder(ColorScheme colorScheme, TextTheme textTheme)
    : profileButtonIconConfiguration = const MyoroIconConfiguration(icon: Icons.person, size: kSpacing * 6),
      bodySuccessStateMargin = const EdgeInsets.symmetric(horizontal: kEdgeInsetsLength),
      gameMargin = const EdgeInsets.only(bottom: kEdgeInsetsLength),
      gameBorderRadius = BorderRadius.circular(kBorderRadiusLength),
      newGameButtonIconConfiguration = const MyoroIconConfiguration(icon: Icons.add, size: kSpacing * 6),
      newGameButtonTextStyle = textTheme.bodySmall!,
      newGameButtonBorderRadius = BorderRadius.circular(kBorderRadiusLength),
      newGameButtonSpacing = kSpacing,
      newGameButtonOffset = const Offset(kEdgeInsetsLength, kEdgeInsetsLength);

  /// [MyoroIconConfiguration] of [GameListingScreen]'s profile button in the app bar.
  final MyoroIconConfiguration profileButtonIconConfiguration;

  /// [EdgeInsets] margin of the [Game] listing.
  final EdgeInsets bodySuccessStateMargin;

  /// [EdgeInsets] margin of a [Game] item.
  final EdgeInsets gameMargin;

  /// [BorderRadius] of a [Game] item.
  final BorderRadius gameBorderRadius;

  /// [MyoroIconConfiguration] of the new game button.
  final MyoroIconConfiguration newGameButtonIconConfiguration;

  /// [TextStyle] of the new game button's text.
  final TextStyle newGameButtonTextStyle;

  /// [BorderRadius] of the new game button.
  final BorderRadius newGameButtonBorderRadius;

  // Spacing between the icon and text of the new game button.
  final double newGameButtonSpacing;

  /// Offset of the new game button within the body's [Stack].
  final Offset newGameButtonOffset;

  @override
  GameListingScreenThemeExtension lerp(covariant ThemeExtension<GameListingScreenThemeExtension>? other, double t) {
    if (other is! GameListingScreenThemeExtension) return this;
    return copyWith(
      profileButtonIconConfiguration: MyoroIconConfiguration.lerp(
        profileButtonIconConfiguration,
        other.profileButtonIconConfiguration,
        t,
      ),
      bodySuccessStateMargin: EdgeInsets.lerp(bodySuccessStateMargin, other.bodySuccessStateMargin, t),
      gameMargin: EdgeInsets.lerp(gameMargin, other.gameMargin, t),
      gameBorderRadius: BorderRadius.lerp(gameBorderRadius, other.gameBorderRadius, t),
      newGameButtonIconConfiguration: MyoroIconConfiguration.lerp(
        newGameButtonIconConfiguration,
        other.newGameButtonIconConfiguration,
        t,
      ),
      newGameButtonTextStyle: TextStyle.lerp(newGameButtonTextStyle, other.newGameButtonTextStyle, t),
      newGameButtonBorderRadius: BorderRadius.lerp(newGameButtonBorderRadius, other.newGameButtonBorderRadius, t),
      newGameButtonSpacing: lerpDouble(newGameButtonSpacing, other.newGameButtonSpacing, t),
      newGameButtonOffset: Offset.lerp(newGameButtonOffset, other.newGameButtonOffset, t),
    );
  }
}
