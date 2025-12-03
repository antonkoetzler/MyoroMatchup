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
    required this.bodySuccessStateTabViewInfoTabWhatsAppGroupChatLinkSectionButtonIconSize,
    required this.bodySuccessStateTabViewInfoTabWhatsAppGroupChatLinkSectionInputStyle,
    required this.bodySuccessStateTabViewInfoTabWhatsAppGroupChatLinkSectionCheckButtonBackgroundIdleColor,
    required this.bodySuccessStateTabViewInfoTabWhatsAppGroupChatLinkSectionCheckButtonBackgroundHoverColor,
    required this.bodySuccessStateTabViewInfoTabWhatsAppGroupChatLinkSectionCheckButtonBackgroundTapColor,
    required this.bodySuccessStateTabViewInfoTabWhatsAppGroupChatLinkSectionCancelButtonBackgroundIdleColor,
    required this.bodySuccessStateTabViewInfoTabWhatsAppGroupChatLinkSectionCancelButtonBackgroundHoverColor,
    required this.bodySuccessStateTabViewInfoTabWhatsAppGroupChatLinkSectionCancelButtonBackgroundTapColor,
    required this.invitationBottomSheetContentPadding,
    required this.playerDetailsBottomSheetTitleTextStyle,
    required this.playerDetailsBottomSheetSpacing,
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
      bodySuccessStateTabViewInfoTabWhatsAppGroupChatLinkSectionButtonIconSize = myoroFake<double>(),
      bodySuccessStateTabViewInfoTabWhatsAppGroupChatLinkSectionInputStyle = myoroFake<MyoroInputStyle>(),
      bodySuccessStateTabViewInfoTabWhatsAppGroupChatLinkSectionCheckButtonBackgroundIdleColor = myoroFake<Color>(),
      bodySuccessStateTabViewInfoTabWhatsAppGroupChatLinkSectionCheckButtonBackgroundHoverColor = myoroFake<Color>(),
      bodySuccessStateTabViewInfoTabWhatsAppGroupChatLinkSectionCheckButtonBackgroundTapColor = myoroFake<Color>(),
      bodySuccessStateTabViewInfoTabWhatsAppGroupChatLinkSectionCancelButtonBackgroundIdleColor = myoroFake<Color>(),
      bodySuccessStateTabViewInfoTabWhatsAppGroupChatLinkSectionCancelButtonBackgroundHoverColor = myoroFake<Color>(),
      bodySuccessStateTabViewInfoTabWhatsAppGroupChatLinkSectionCancelButtonBackgroundTapColor = myoroFake<Color>(),
      invitationBottomSheetContentPadding = myoroFake<EdgeInsets>(),
      playerDetailsBottomSheetTitleTextStyle = myoroFake<TextStyle>(),
      playerDetailsBottomSheetSpacing = myoroFake<double>();

  /// Builder constructor.
  factory GameDetailsScreenThemeExtension.builder(TextTheme textTheme) {
    const bodySuccessStateTabViewInfoTabWhatsAppGroupChatLinkSectionButtonBackgroundHoverColorAlphaValue = 0.33;
    const bodySuccessStateTabViewInfoTabWhatsAppGroupChatLinkSectionButtonBackgroundTapColorAlphaValue = 0.66;

    const bodySuccessStateTabViewInfoTabWhatsAppGroupChatLinkSectionCheckButtonColor = MyoroColors.green1;
    const bodySuccessStateTabViewInfoTabWhatsAppGroupChatLinkSectionCancelButtonColor = MyoroColors.red1;

    return GameDetailsScreenThemeExtension(
      errorStatePadding: const EdgeInsets.all(kMyoroMultiplier * 4),
      bodySuccessStateTabViewContentPadding: const EdgeInsets.all(kMyoroMultiplier * 4),
      spacing: kMyoroMultiplier * 2,
      bodySuccessStateTabViewInfoTabContentPadding: const EdgeInsets.all(kMyoroMultiplier * 4),
      bodySuccessStateTabViewPlayersTabActionButtonTextStyle: const MyoroTextStyle(alignment: TextAlign.center),
      invitationBottomSheetTitleTextStyle: textTheme.titleMedium!,
      invitationBottomSheetActionButtonsSpacing: kMyoroMultiplier * 2,
      invitationBottomSheetSpacing: kMyoroMultiplier * 2,
      bodySuccessStateTabViewInfoTabWhatsAppGroupChatLinkSectionButtonIconSize: kMyoroMultiplier * 7,
      bodySuccessStateTabViewInfoTabWhatsAppGroupChatLinkSectionInputStyle: MyoroInputStyle(
        inputTextStyle: textTheme.bodySmall,
        contentPadding: const EdgeInsets.all(kMyoroMultiplier * 1.55),
      ),
      bodySuccessStateTabViewInfoTabWhatsAppGroupChatLinkSectionCheckButtonBackgroundIdleColor:
          bodySuccessStateTabViewInfoTabWhatsAppGroupChatLinkSectionCheckButtonColor,
      bodySuccessStateTabViewInfoTabWhatsAppGroupChatLinkSectionCheckButtonBackgroundHoverColor:
          bodySuccessStateTabViewInfoTabWhatsAppGroupChatLinkSectionCheckButtonColor.withValues(
            alpha: bodySuccessStateTabViewInfoTabWhatsAppGroupChatLinkSectionButtonBackgroundHoverColorAlphaValue,
          ),
      bodySuccessStateTabViewInfoTabWhatsAppGroupChatLinkSectionCheckButtonBackgroundTapColor:
          bodySuccessStateTabViewInfoTabWhatsAppGroupChatLinkSectionCheckButtonColor.withValues(
            alpha: bodySuccessStateTabViewInfoTabWhatsAppGroupChatLinkSectionButtonBackgroundTapColorAlphaValue,
          ),
      bodySuccessStateTabViewInfoTabWhatsAppGroupChatLinkSectionCancelButtonBackgroundIdleColor:
          bodySuccessStateTabViewInfoTabWhatsAppGroupChatLinkSectionCancelButtonColor,
      bodySuccessStateTabViewInfoTabWhatsAppGroupChatLinkSectionCancelButtonBackgroundHoverColor:
          bodySuccessStateTabViewInfoTabWhatsAppGroupChatLinkSectionCancelButtonColor.withValues(
            alpha: bodySuccessStateTabViewInfoTabWhatsAppGroupChatLinkSectionButtonBackgroundHoverColorAlphaValue,
          ),
      bodySuccessStateTabViewInfoTabWhatsAppGroupChatLinkSectionCancelButtonBackgroundTapColor:
          bodySuccessStateTabViewInfoTabWhatsAppGroupChatLinkSectionCancelButtonColor.withValues(
            alpha: bodySuccessStateTabViewInfoTabWhatsAppGroupChatLinkSectionButtonBackgroundTapColorAlphaValue,
          ),
      invitationBottomSheetContentPadding: const EdgeInsets.all(kMyoroMultiplier * 2),
      playerDetailsBottomSheetTitleTextStyle: textTheme.titleMedium!,
      playerDetailsBottomSheetSpacing: kMyoroMultiplier * 1.5,
    );
  }

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

  /// Icon size of the body success state tab view info tab whats app group chat link section button.
  final double bodySuccessStateTabViewInfoTabWhatsAppGroupChatLinkSectionButtonIconSize;

  /// Input style of the body success state tab view info tab whats app group chat link section.
  final MyoroInputStyle bodySuccessStateTabViewInfoTabWhatsAppGroupChatLinkSectionInputStyle;

  /// [MyoroTapStatusEnum.idle] background color of the body success state tab view info tab whats app group chat link section check button.
  final Color bodySuccessStateTabViewInfoTabWhatsAppGroupChatLinkSectionCheckButtonBackgroundIdleColor;

  /// [MyoroTapStatusEnum.hover] background color of the body success state tab view info tab whats app group chat link section check button.
  final Color bodySuccessStateTabViewInfoTabWhatsAppGroupChatLinkSectionCheckButtonBackgroundHoverColor;

  /// [MyoroTapStatusEnum.tap] background color of the body success state tab view info tab whats app group chat link section check button.
  final Color bodySuccessStateTabViewInfoTabWhatsAppGroupChatLinkSectionCheckButtonBackgroundTapColor;

  /// [MyoroTapStatusEnum.idle] background color of the body success state tab view info tab whats app group chat link section cancel button.
  final Color bodySuccessStateTabViewInfoTabWhatsAppGroupChatLinkSectionCancelButtonBackgroundIdleColor;

  /// [MyoroTapStatusEnum.hover] background color of the body success state tab view info tab whats app group chat link section cancel button.
  final Color bodySuccessStateTabViewInfoTabWhatsAppGroupChatLinkSectionCancelButtonBackgroundHoverColor;

  /// [MyoroTapStatusEnum.tap] background color of the body success state tab view info tab whats app group chat link section cancel button.
  final Color bodySuccessStateTabViewInfoTabWhatsAppGroupChatLinkSectionCancelButtonBackgroundTapColor;

  /// Content padding of the invitation bottom sheet.
  final EdgeInsets invitationBottomSheetContentPadding;

  /// Text style of the player details bottom sheet title.
  final TextStyle playerDetailsBottomSheetTitleTextStyle;

  /// Spacing of the player details bottom sheet.
  final double playerDetailsBottomSheetSpacing;

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
      bodySuccessStateTabViewInfoTabWhatsAppGroupChatLinkSectionButtonIconSize: lerpDouble(
        bodySuccessStateTabViewInfoTabWhatsAppGroupChatLinkSectionButtonIconSize,
        other.bodySuccessStateTabViewInfoTabWhatsAppGroupChatLinkSectionButtonIconSize,
        t,
      ),
      bodySuccessStateTabViewInfoTabWhatsAppGroupChatLinkSectionInputStyle: MyoroInputStyle.lerp(
        bodySuccessStateTabViewInfoTabWhatsAppGroupChatLinkSectionInputStyle,
        other.bodySuccessStateTabViewInfoTabWhatsAppGroupChatLinkSectionInputStyle,
        t,
      ),
      bodySuccessStateTabViewInfoTabWhatsAppGroupChatLinkSectionCheckButtonBackgroundIdleColor: Color.lerp(
        bodySuccessStateTabViewInfoTabWhatsAppGroupChatLinkSectionCheckButtonBackgroundIdleColor,
        other.bodySuccessStateTabViewInfoTabWhatsAppGroupChatLinkSectionCheckButtonBackgroundIdleColor,
        t,
      ),
      bodySuccessStateTabViewInfoTabWhatsAppGroupChatLinkSectionCheckButtonBackgroundHoverColor: Color.lerp(
        bodySuccessStateTabViewInfoTabWhatsAppGroupChatLinkSectionCheckButtonBackgroundHoverColor,
        other.bodySuccessStateTabViewInfoTabWhatsAppGroupChatLinkSectionCheckButtonBackgroundHoverColor,
        t,
      ),
      bodySuccessStateTabViewInfoTabWhatsAppGroupChatLinkSectionCheckButtonBackgroundTapColor: Color.lerp(
        bodySuccessStateTabViewInfoTabWhatsAppGroupChatLinkSectionCheckButtonBackgroundTapColor,
        other.bodySuccessStateTabViewInfoTabWhatsAppGroupChatLinkSectionCheckButtonBackgroundTapColor,
        t,
      ),
      bodySuccessStateTabViewInfoTabWhatsAppGroupChatLinkSectionCancelButtonBackgroundIdleColor: Color.lerp(
        bodySuccessStateTabViewInfoTabWhatsAppGroupChatLinkSectionCancelButtonBackgroundIdleColor,
        other.bodySuccessStateTabViewInfoTabWhatsAppGroupChatLinkSectionCancelButtonBackgroundIdleColor,
        t,
      ),
      bodySuccessStateTabViewInfoTabWhatsAppGroupChatLinkSectionCancelButtonBackgroundHoverColor: Color.lerp(
        bodySuccessStateTabViewInfoTabWhatsAppGroupChatLinkSectionCancelButtonBackgroundHoverColor,
        other.bodySuccessStateTabViewInfoTabWhatsAppGroupChatLinkSectionCancelButtonBackgroundHoverColor,
        t,
      ),
      bodySuccessStateTabViewInfoTabWhatsAppGroupChatLinkSectionCancelButtonBackgroundTapColor: Color.lerp(
        bodySuccessStateTabViewInfoTabWhatsAppGroupChatLinkSectionCancelButtonBackgroundTapColor,
        other.bodySuccessStateTabViewInfoTabWhatsAppGroupChatLinkSectionCancelButtonBackgroundTapColor,
        t,
      ),
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
    );
  }
}
