import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

part 'game_details_screen_theme_extension.g.dart';

/// [ThemeExtension] of [GameDetailsScreen].
@immutable
@myoroThemeExtension
final class GameDetailsScreenThemeExtension extends ThemeExtension<GameDetailsScreenThemeExtension>
    with _$GameDetailsScreenThemeExtensionMixin {
  /// Default constructor.
  const GameDetailsScreenThemeExtension({
    required this.errorStatePadding,
    required this.bodySuccessStateTabViewContentPadding,
    required this.spacing,
    required this.bodySuccessStateTabViewInfoTabContentPadding,
    required this.bodySuccessStateTabViewPlayersTabActionButtonTextStyle,
    required this.invitationBottomSheetTitleTextStyle,
    required this.invitationBottomSheetActionButtonsSpacing,
    required this.invitationBottomSheetSpacing,
    required this.invitationBottomSheetContentPadding,
    required this.playerDetailsBottomSheetTitleTextStyle,
    required this.playerDetailsBottomSheetSpacing,
    required this.bodySuccessStateTabViewPlayersTabContentTeamListingNameTextStyle,
  });

  /// Fake constructor.
  GameDetailsScreenThemeExtension.fake()
    : errorStatePadding = myoroFake<EdgeInsets>(),
      bodySuccessStateTabViewContentPadding = myoroFake<EdgeInsets>(),
      spacing = myoroFake<double>(),
      bodySuccessStateTabViewInfoTabContentPadding = myoroFake<EdgeInsets>(),
      bodySuccessStateTabViewPlayersTabActionButtonTextStyle = myoroFake<MyoroTextStyle>(),
      invitationBottomSheetTitleTextStyle = myoroFake<TextStyle>(),
      invitationBottomSheetActionButtonsSpacing = myoroFake<double>(),
      invitationBottomSheetSpacing = myoroFake<double>(),
      invitationBottomSheetContentPadding = myoroFake<EdgeInsets>(),
      playerDetailsBottomSheetTitleTextStyle = myoroFake<TextStyle>(),
      playerDetailsBottomSheetSpacing = myoroFake<double>(),
      bodySuccessStateTabViewPlayersTabContentTeamListingNameTextStyle = myoroFake<TextStyle>();

  /// Builder constructor.
  GameDetailsScreenThemeExtension.builder(TextTheme textTheme)
    : errorStatePadding = const EdgeInsets.all(kMyoroMultiplier * 4),
      bodySuccessStateTabViewContentPadding = const EdgeInsets.all(kMyoroMultiplier * 4),
      spacing = kMyoroMultiplier * 2,
      bodySuccessStateTabViewInfoTabContentPadding = const EdgeInsets.all(kMyoroMultiplier * 4),
      bodySuccessStateTabViewPlayersTabActionButtonTextStyle = const MyoroTextStyle(alignment: TextAlign.center),
      invitationBottomSheetTitleTextStyle = textTheme.titleMedium!,
      invitationBottomSheetActionButtonsSpacing = kMyoroMultiplier * 2,
      invitationBottomSheetSpacing = kMyoroMultiplier * 2,
      invitationBottomSheetContentPadding = const EdgeInsets.all(kMyoroMultiplier * 2),
      playerDetailsBottomSheetTitleTextStyle = textTheme.titleMedium!,
      playerDetailsBottomSheetSpacing = kMyoroMultiplier * 1.5,
      bodySuccessStateTabViewPlayersTabContentTeamListingNameTextStyle = textTheme.titleMedium!;

  /// [EdgeInsets] of the error state's content.
  final EdgeInsets errorStatePadding;

  /// Content padding of a tab view's content.
  final EdgeInsets bodySuccessStateTabViewContentPadding;

  /// General spacing.
  final double spacing;

  /// Tab content padding.
  final EdgeInsets bodySuccessStateTabViewInfoTabContentPadding;

  /// Text configuration of the action button.
  final MyoroTextStyle bodySuccessStateTabViewPlayersTabActionButtonTextStyle;

  /// Text style of the invitation bottom sheet title.
  final TextStyle invitationBottomSheetTitleTextStyle;

  /// Spacing of the invitation bottom sheet action buttons.
  final double invitationBottomSheetActionButtonsSpacing;

  /// Spacing of the invitation bottom sheet.
  final double invitationBottomSheetSpacing;

  /// Content padding of the invitation bottom sheet.
  final EdgeInsets invitationBottomSheetContentPadding;

  /// Text style of the player details bottom sheet title.
  final TextStyle playerDetailsBottomSheetTitleTextStyle;

  /// Spacing of the player details bottom sheet.
  final double playerDetailsBottomSheetSpacing;

  /// Text style of the team listing name.
  final TextStyle bodySuccessStateTabViewPlayersTabContentTeamListingNameTextStyle;

  /// Lerp function.
  @override
  ThemeExtension<GameDetailsScreenThemeExtension> lerp(
    covariant ThemeExtension<GameDetailsScreenThemeExtension>? other,
    double t,
  ) {
    if (other is! GameDetailsScreenThemeExtension) return this;
    return copyWith(
      errorStatePadding: EdgeInsets.lerp(errorStatePadding, other.errorStatePadding, t),
      bodySuccessStateTabViewContentPadding: EdgeInsets.lerp(
        bodySuccessStateTabViewContentPadding,
        other.bodySuccessStateTabViewContentPadding,
        t,
      ),
      spacing: lerpDouble(spacing, other.spacing, t),
      bodySuccessStateTabViewInfoTabContentPadding: EdgeInsets.lerp(
        bodySuccessStateTabViewInfoTabContentPadding,
        other.bodySuccessStateTabViewInfoTabContentPadding,
        t,
      ),
      bodySuccessStateTabViewPlayersTabActionButtonTextStyle: MyoroTextStyle.lerp(
        bodySuccessStateTabViewPlayersTabActionButtonTextStyle,
        other.bodySuccessStateTabViewPlayersTabActionButtonTextStyle,
        t,
      ),
      invitationBottomSheetTitleTextStyle: TextStyle.lerp(
        invitationBottomSheetTitleTextStyle,
        other.invitationBottomSheetTitleTextStyle,
        t,
      )!,
      invitationBottomSheetActionButtonsSpacing: lerpDouble(
        invitationBottomSheetActionButtonsSpacing,
        other.invitationBottomSheetActionButtonsSpacing,
        t,
      ),
      invitationBottomSheetSpacing: lerpDouble(invitationBottomSheetSpacing, other.invitationBottomSheetSpacing, t),
      invitationBottomSheetContentPadding: EdgeInsets.lerp(
        invitationBottomSheetContentPadding,
        other.invitationBottomSheetContentPadding,
        t,
      ),
      playerDetailsBottomSheetTitleTextStyle: TextStyle.lerp(
        playerDetailsBottomSheetTitleTextStyle,
        other.playerDetailsBottomSheetTitleTextStyle,
        t,
      )!,
      playerDetailsBottomSheetSpacing: lerpDouble(
        playerDetailsBottomSheetSpacing,
        other.playerDetailsBottomSheetSpacing,
        t,
      ),
      bodySuccessStateTabViewPlayersTabContentTeamListingNameTextStyle: TextStyle.lerp(
        bodySuccessStateTabViewPlayersTabContentTeamListingNameTextStyle,
        other.bodySuccessStateTabViewPlayersTabContentTeamListingNameTextStyle,
        t,
      )!,
    );
  }
}
