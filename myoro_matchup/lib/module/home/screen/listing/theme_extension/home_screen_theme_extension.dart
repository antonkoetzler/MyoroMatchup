import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

part 'home_screen_theme_extension.g.dart';

/// [ThemeExtension] of [HomeScreen].
@immutable
@myoroThemeExtension
final class HomeScreenThemeExtension extends ThemeExtension<HomeScreenThemeExtension>
    with _$HomeScreenThemeExtensionMixin {
  /// Default constructor.
  const HomeScreenThemeExtension({
    required this.gameMargin,
    required this.gameBorderRadius,
    required this.bodyUserSportStatsErrorStatePadding,
    required this.bodyUserSportStatsPlayerCardNameTextStyle,
    required this.bodyUserSportStatsPlayerCardRatingTextStyle,
    required this.bodyUserSportStatsStatsItemLabelTextStyle,
    required this.bodyUserSportStatsStatsItemValueTextStyle,
    required this.bodyUserSportStatsPlayerCardProfilePictureSize,
    required this.bodyUserSportStatsSuccessStateCardStyle,
    required this.bodyUserSportStatsSportSwitcherStyle,
    required this.bodyUserSportStatsStatsSpacing,
    required this.bodyUserSportStatsPlayerCardBeginnerCardStyle,
    required this.bodyUserSportStatsPlayerCardProCardStyle,
    required this.bodyUserSportStatsPlayerCardGoatCardStyle,
  });

  /// Fake constructor.
  HomeScreenThemeExtension.fake()
    : gameMargin = myoroFake<EdgeInsets>(),
      gameBorderRadius = myoroFake<BorderRadius>(),
      bodyUserSportStatsErrorStatePadding = myoroFake<EdgeInsets>(),
      bodyUserSportStatsPlayerCardNameTextStyle = myoroFake<TextStyle>(),
      bodyUserSportStatsPlayerCardRatingTextStyle = myoroFake<TextStyle>(),
      bodyUserSportStatsStatsItemLabelTextStyle = myoroFake<TextStyle>(),
      bodyUserSportStatsStatsItemValueTextStyle = myoroFake<TextStyle>(),
      bodyUserSportStatsPlayerCardProfilePictureSize = myoroFake<double>(),
      bodyUserSportStatsSuccessStateCardStyle = myoroFake<MyoroCardStyle>(),
      bodyUserSportStatsSportSwitcherStyle = myoroFake<MyoroDropdownStyle>(),
      bodyUserSportStatsStatsSpacing = myoroFake<double>(),
      bodyUserSportStatsPlayerCardBeginnerCardStyle = myoroFake<MyoroCardStyle>(),
      bodyUserSportStatsPlayerCardProCardStyle = myoroFake<MyoroCardStyle>(),
      bodyUserSportStatsPlayerCardGoatCardStyle = myoroFake<MyoroCardStyle>();

  /// Builder constructor.
  factory HomeScreenThemeExtension.builder(ColorScheme colorScheme, TextTheme textTheme) {
    const baseBodyUserSportStatsPlayerCardCardStyle = MyoroCardStyle(
      padding: EdgeInsets.only(
        top: kMyoroMultiplier * 1.5,
        bottom: kMyoroMultiplier - 2,
        left: kMyoroMultiplier,
        right: kMyoroMultiplier,
      ),
    );

    return HomeScreenThemeExtension(
      gameMargin: const EdgeInsets.only(bottom: kEdgeInsetsLength),
      gameBorderRadius: BorderRadius.circular(kMyoroBorderRadius),
      bodyUserSportStatsErrorStatePadding: const EdgeInsets.only(
        top: kEdgeInsetsLength - kMyoroMultiplier,
        bottom: kEdgeInsetsLength,
        left: kEdgeInsetsLength,
        right: kEdgeInsetsLength,
      ),
      bodyUserSportStatsPlayerCardNameTextStyle: textTheme.bodySmall!,
      bodyUserSportStatsPlayerCardRatingTextStyle: textTheme.titleSmall!,
      bodyUserSportStatsStatsItemLabelTextStyle: textTheme.titleSmall!,
      bodyUserSportStatsStatsItemValueTextStyle: textTheme.bodySmall!,
      bodyUserSportStatsPlayerCardProfilePictureSize: kMyoroMultiplier * 10,
      bodyUserSportStatsSuccessStateCardStyle: MyoroCardStyle(border: Border.all(width: 0)),
      bodyUserSportStatsSportSwitcherStyle: MyoroDropdownStyle(
        textAlign: TextAlign.center,
        inputTextStyle: textTheme.bodySmall!.copyWith(fontSize: MyoroFontSizeEnum.extraTiny.size),
      ),
      bodyUserSportStatsStatsSpacing: kMyoroMultiplier * 3,
      bodyUserSportStatsPlayerCardBeginnerCardStyle: baseBodyUserSportStatsPlayerCardCardStyle.copyWith(
        backgroundColor: MyoroColors.bronze1.withValues(alpha: 0.3),
        border: Border.all(width: kMyoroBorderWidth, color: MyoroColors.bronze1),
      ),
      bodyUserSportStatsPlayerCardProCardStyle: baseBodyUserSportStatsPlayerCardCardStyle.copyWith(
        backgroundColor: MyoroColors.silver1.withValues(alpha: 0.3),
        border: Border.all(width: kMyoroBorderWidth, color: MyoroColors.silver1),
      ),
      bodyUserSportStatsPlayerCardGoatCardStyle: baseBodyUserSportStatsPlayerCardCardStyle.copyWith(
        backgroundColor: MyoroColors.gold1.withValues(alpha: 0.3),
        border: Border.all(width: kMyoroBorderWidth, color: MyoroColors.gold1),
      ),
    );
  }

  /// [EdgeInsets] margin of a game item.
  final EdgeInsets gameMargin;

  /// [BorderRadius] of a game item.
  final BorderRadius gameBorderRadius;

  /// [EdgeInsets] margin of the error state of the player stats section.
  final EdgeInsets bodyUserSportStatsErrorStatePadding;

  /// [TextStyle] of the stats player card name.
  final TextStyle bodyUserSportStatsPlayerCardNameTextStyle;

  /// [TextStyle] of the stats player card rating.
  final TextStyle bodyUserSportStatsPlayerCardRatingTextStyle;

  /// [TextStyle] of the stats item label.
  final TextStyle bodyUserSportStatsStatsItemLabelTextStyle;

  /// [TextStyle] of the stats item value.
  final TextStyle bodyUserSportStatsStatsItemValueTextStyle;

  /// Size of the profile picture of the player card.
  final double bodyUserSportStatsPlayerCardProfilePictureSize;

  /// Style of the success state of the player stats section.
  final MyoroCardStyle bodyUserSportStatsSuccessStateCardStyle;

  /// Style of the sport switcher.
  final MyoroDropdownStyle bodyUserSportStatsSportSwitcherStyle;

  /// Spacing of the stats.
  final double bodyUserSportStatsStatsSpacing;

  /// [MyoroCardStyle] of the beginner player card.
  final MyoroCardStyle bodyUserSportStatsPlayerCardBeginnerCardStyle;

  /// [MyoroCardStyle] of the pro player card.
  final MyoroCardStyle bodyUserSportStatsPlayerCardProCardStyle;

  /// [MyoroCardStyle] of the goat player card.
  final MyoroCardStyle bodyUserSportStatsPlayerCardGoatCardStyle;

  /// Lerp function.
  @override
  HomeScreenThemeExtension lerp(covariant ThemeExtension<HomeScreenThemeExtension>? other, double t) {
    if (other is! HomeScreenThemeExtension) return this;
    return copyWith(
      gameMargin: EdgeInsets.lerp(gameMargin, other.gameMargin, t),
      gameBorderRadius: BorderRadius.lerp(gameBorderRadius, other.gameBorderRadius, t),
      bodyUserSportStatsErrorStatePadding: EdgeInsets.lerp(
        bodyUserSportStatsErrorStatePadding,
        other.bodyUserSportStatsErrorStatePadding,
        t,
      ),
      bodyUserSportStatsPlayerCardNameTextStyle: TextStyle.lerp(
        bodyUserSportStatsPlayerCardNameTextStyle,
        other.bodyUserSportStatsPlayerCardNameTextStyle,
        t,
      ),
      bodyUserSportStatsPlayerCardRatingTextStyle: TextStyle.lerp(
        bodyUserSportStatsPlayerCardRatingTextStyle,
        other.bodyUserSportStatsPlayerCardRatingTextStyle,
        t,
      ),
      bodyUserSportStatsStatsItemLabelTextStyle: TextStyle.lerp(
        bodyUserSportStatsStatsItemLabelTextStyle,
        other.bodyUserSportStatsStatsItemLabelTextStyle,
        t,
      ),
      bodyUserSportStatsStatsItemValueTextStyle: TextStyle.lerp(
        bodyUserSportStatsStatsItemValueTextStyle,
        other.bodyUserSportStatsStatsItemValueTextStyle,
        t,
      ),
      bodyUserSportStatsPlayerCardProfilePictureSize: lerpDouble(
        bodyUserSportStatsPlayerCardProfilePictureSize,
        other.bodyUserSportStatsPlayerCardProfilePictureSize,
        t,
      ),
      bodyUserSportStatsSuccessStateCardStyle: MyoroCardStyle.lerp(
        bodyUserSportStatsSuccessStateCardStyle,
        other.bodyUserSportStatsSuccessStateCardStyle,
        t,
      ),
      bodyUserSportStatsSportSwitcherStyle: MyoroDropdownStyle.lerp(
        bodyUserSportStatsSportSwitcherStyle,
        other.bodyUserSportStatsSportSwitcherStyle,
        t,
      ),
      bodyUserSportStatsStatsSpacing: lerpDouble(
        bodyUserSportStatsStatsSpacing,
        other.bodyUserSportStatsStatsSpacing,
        t,
      ),
      bodyUserSportStatsPlayerCardBeginnerCardStyle: MyoroCardStyle.lerp(
        bodyUserSportStatsPlayerCardBeginnerCardStyle,
        other.bodyUserSportStatsPlayerCardBeginnerCardStyle,
        t,
      ),
      bodyUserSportStatsPlayerCardProCardStyle: MyoroCardStyle.lerp(
        bodyUserSportStatsPlayerCardProCardStyle,
        other.bodyUserSportStatsPlayerCardProCardStyle,
        t,
      ),
      bodyUserSportStatsPlayerCardGoatCardStyle: MyoroCardStyle.lerp(
        bodyUserSportStatsPlayerCardGoatCardStyle,
        other.bodyUserSportStatsPlayerCardGoatCardStyle,
        t,
      ),
    );
  }
}
