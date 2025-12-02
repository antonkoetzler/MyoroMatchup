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
    required this.bodyUserSportStatsPlayerCardNameTextStyle,
    required this.bodyUserSportStatsPlayerCardBadgeTextStyle,
    required this.bodyUserSportStatsStatsItemLabelTextStyle,
    required this.bodyUserSportStatsStatsItemValueTextStyle,
    required this.bodyUserSportStatsSuccessStateCardStyle,
    required this.bodyUserSportStatsSportSwitcherStyle,
    required this.bodyUserSportStatsStatsSpacing,
    required this.bodyUserSportStatsPlayerCardBeginnerCardStyle,
    required this.bodyUserSportStatsPlayerCardProCardStyle,
    required this.bodyUserSportStatsPlayerCardGoatCardStyle,
    required this.bodyUserSportStatsPlayerCardBadgeDecoration,
    required this.bodyUserSportStatsPlayerCardBadgePadding,
    required this.bodyUserSportStatsSuccessStateRowSpacing,
    required this.bodyUserSportStatsSuccessStateColumnSpacing,
    required this.bodyUserSportStatsPlayerCardProfilePictureSize,
    required this.bodyUserSportStatsEditProfileButtonStyle,
    required this.bodyUserSportStatsStatsDividerMargin,
  });

  /// Fake constructor.
  HomeScreenThemeExtension.fake()
    : gameMargin = myoroFake<EdgeInsets>(),
      gameBorderRadius = myoroFake<BorderRadius>(),
      bodyUserSportStatsPlayerCardNameTextStyle = myoroFake<TextStyle>(),
      bodyUserSportStatsPlayerCardBadgeTextStyle = myoroFake<TextStyle>(),
      bodyUserSportStatsStatsItemLabelTextStyle = myoroFake<TextStyle>(),
      bodyUserSportStatsStatsItemValueTextStyle = myoroFake<TextStyle>(),
      bodyUserSportStatsSuccessStateCardStyle = myoroFake<MyoroCardStyle>(),
      bodyUserSportStatsSportSwitcherStyle = myoroFake<MyoroDropdownStyle>(),
      bodyUserSportStatsStatsSpacing = myoroFake<double>(),
      bodyUserSportStatsPlayerCardBeginnerCardStyle = myoroFake<MyoroCardStyle>(),
      bodyUserSportStatsPlayerCardProCardStyle = myoroFake<MyoroCardStyle>(),
      bodyUserSportStatsPlayerCardGoatCardStyle = myoroFake<MyoroCardStyle>(),
      bodyUserSportStatsPlayerCardBadgeDecoration = myoroFake<BoxDecoration>(),
      bodyUserSportStatsPlayerCardBadgePadding = myoroFake<EdgeInsets>(),
      bodyUserSportStatsSuccessStateRowSpacing = myoroFake<double>(),
      bodyUserSportStatsSuccessStateColumnSpacing = myoroFake<double>(),
      bodyUserSportStatsPlayerCardProfilePictureSize = myoroFake<double>(),
      bodyUserSportStatsEditProfileButtonStyle = myoroFake<MyoroIconTextButtonStyle>(),
      bodyUserSportStatsStatsDividerMargin = myoroFake<EdgeInsets>();

  /// Builder constructor.
  factory HomeScreenThemeExtension.builder(ColorScheme colorScheme, TextTheme textTheme) {
    const baseBodyUserSportStatsPlayerCardCardStyle = MyoroCardStyle(
      padding: EdgeInsets.only(
        top: kMyoroMultiplier * 1.5,
        left: kMyoroMultiplier * 1.5,
        right: kMyoroMultiplier * 1.5,
      ),
    );

    return HomeScreenThemeExtension(
      gameMargin: const EdgeInsets.only(bottom: kEdgeInsetsLength, left: kEdgeInsetsLength, right: kEdgeInsetsLength),
      gameBorderRadius: BorderRadius.circular(kMyoroBorderRadius),
      bodyUserSportStatsPlayerCardNameTextStyle: textTheme.bodySmall!,
      bodyUserSportStatsPlayerCardBadgeTextStyle: textTheme.titleMedium!,
      bodyUserSportStatsStatsItemLabelTextStyle: textTheme.titleSmall!,
      bodyUserSportStatsStatsItemValueTextStyle: textTheme.bodySmall!,
      bodyUserSportStatsSuccessStateCardStyle: MyoroCardStyle(border: Border.all(width: 0)),
      bodyUserSportStatsSportSwitcherStyle: MyoroDropdownStyle(
        textAlign: TextAlign.center,
        inputTextStyle: textTheme.bodySmall!,
        contentPadding: const EdgeInsets.all(kMyoroMultiplier * 1.4),
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
      bodyUserSportStatsPlayerCardBadgeDecoration: BoxDecoration(
        color: colorScheme.primary,
        borderRadius: BorderRadius.circular(kMyoroBorderRadius * 2),
        border: Border.all(width: kMyoroBorderWidth, color: colorScheme.onPrimary),
      ),
      bodyUserSportStatsPlayerCardBadgePadding: const EdgeInsets.symmetric(horizontal: kMyoroMultiplier),
      bodyUserSportStatsSuccessStateRowSpacing: kMyoroMultiplier * 3,
      bodyUserSportStatsSuccessStateColumnSpacing: kMyoroMultiplier,
      bodyUserSportStatsPlayerCardProfilePictureSize: 51,
      bodyUserSportStatsEditProfileButtonStyle: const MyoroIconTextButtonStyle(
        contentPadding: EdgeInsets.all(kMyoroMultiplier),
      ),
      bodyUserSportStatsStatsDividerMargin: const EdgeInsets.symmetric(vertical: kMyoroMultiplier * 1.5),
    );
  }

  /// [EdgeInsets] margin of a game item.
  final EdgeInsets gameMargin;

  /// [BorderRadius] of a game item.
  final BorderRadius gameBorderRadius;

  /// [TextStyle] of the stats player card name.
  final TextStyle bodyUserSportStatsPlayerCardNameTextStyle;

  /// [TextStyle] of the stats player card rating.
  final TextStyle bodyUserSportStatsPlayerCardBadgeTextStyle;

  /// [TextStyle] of the stats item label.
  final TextStyle bodyUserSportStatsStatsItemLabelTextStyle;

  /// [TextStyle] of the stats item value.
  final TextStyle bodyUserSportStatsStatsItemValueTextStyle;

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

  /// [Decoration] of the rating of the player card.
  final BoxDecoration bodyUserSportStatsPlayerCardBadgeDecoration;

  /// [EdgeInsets] of the rating of the player card.
  final EdgeInsets bodyUserSportStatsPlayerCardBadgePadding;

  /// Spacing of the row in the success state of the player stats section.
  final double bodyUserSportStatsSuccessStateRowSpacing;

  /// Spacing of the column in the success state of the player stats section.
  final double bodyUserSportStatsSuccessStateColumnSpacing;

  /// Size of the profile picture of the player card.
  final double bodyUserSportStatsPlayerCardProfilePictureSize;

  /// Style of the edit profile button.
  final MyoroIconTextButtonStyle bodyUserSportStatsEditProfileButtonStyle;

  /// Margin of the divider in the stats section.
  final EdgeInsets bodyUserSportStatsStatsDividerMargin;

  /// Lerp function.
  @override
  HomeScreenThemeExtension lerp(covariant ThemeExtension<HomeScreenThemeExtension>? other, double t) {
    if (other is! HomeScreenThemeExtension) return this;
    return copyWith(
      gameMargin: EdgeInsets.lerp(gameMargin, other.gameMargin, t),
      gameBorderRadius: BorderRadius.lerp(gameBorderRadius, other.gameBorderRadius, t),
      bodyUserSportStatsPlayerCardNameTextStyle: TextStyle.lerp(
        bodyUserSportStatsPlayerCardNameTextStyle,
        other.bodyUserSportStatsPlayerCardNameTextStyle,
        t,
      ),
      bodyUserSportStatsPlayerCardBadgeTextStyle: TextStyle.lerp(
        bodyUserSportStatsPlayerCardBadgeTextStyle,
        other.bodyUserSportStatsPlayerCardBadgeTextStyle,
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
      bodyUserSportStatsPlayerCardBadgeDecoration: BoxDecoration.lerp(
        bodyUserSportStatsPlayerCardBadgeDecoration,
        other.bodyUserSportStatsPlayerCardBadgeDecoration,
        t,
      ),
      bodyUserSportStatsPlayerCardBadgePadding: EdgeInsets.lerp(
        bodyUserSportStatsPlayerCardBadgePadding,
        other.bodyUserSportStatsPlayerCardBadgePadding,
        t,
      ),
      bodyUserSportStatsSuccessStateRowSpacing: lerpDouble(
        bodyUserSportStatsSuccessStateRowSpacing,
        other.bodyUserSportStatsSuccessStateRowSpacing,
        t,
      ),
      bodyUserSportStatsSuccessStateColumnSpacing: lerpDouble(
        bodyUserSportStatsSuccessStateColumnSpacing,
        other.bodyUserSportStatsSuccessStateColumnSpacing,
        t,
      ),
      bodyUserSportStatsPlayerCardProfilePictureSize: lerpDouble(
        bodyUserSportStatsPlayerCardProfilePictureSize,
        other.bodyUserSportStatsPlayerCardProfilePictureSize,
        t,
      ),
      bodyUserSportStatsEditProfileButtonStyle: MyoroIconTextButtonStyle.lerp(
        bodyUserSportStatsEditProfileButtonStyle,
        other.bodyUserSportStatsEditProfileButtonStyle,
        t,
      ),
      bodyUserSportStatsStatsDividerMargin: EdgeInsets.lerp(
        bodyUserSportStatsStatsDividerMargin,
        other.bodyUserSportStatsStatsDividerMargin,
        t,
      ),
    );
  }
}
