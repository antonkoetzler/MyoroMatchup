import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

part 'invitation_listing_screen_theme_extension.g.dart';

/// [ThemeExtension] of [InvitationListingScreen].
@immutable
@myoroThemeExtension
final class InvitationListingScreenThemeExtension extends ThemeExtension<InvitationListingScreenThemeExtension>
    with _$InvitationListingScreenThemeExtensionMixin {
  /// Default constructor.
  const InvitationListingScreenThemeExtension({
    required this.bodySuccessStateNonEmptyStateItemGamePadding,
    required this.bodySuccessStateNonEmptyStateScrollableStyle,
    required this.bodySuccessStateNonEmptyStateItemGameTextStyle,
    required this.bodySuccessStateNonEmptyStateItemInviterAndDatesTextStyle,
    required this.bodySuccessStateNonEmptyStateItemStatusTextStyle,
    required this.bodySuccessStateNonEmptyStateItemPendingBackgroundColor,
    required this.bodySuccessStateNonEmptyStateItemAcceptedBackgroundColor,
    required this.bodySuccessStateNonEmptyStateItemRejectedBackgroundColor,
    required this.bodySuccessStateNonEmptyStateItemExpiredBackgroundColor,
    required this.bodySuccessStateNonEmptyStateItemCancelledBackgroundColor,
    required this.bodySuccessStateNonEmptyStateItemPendingContentColor,
    required this.bodySuccessStateNonEmptyStateItemAcceptedContentColor,
    required this.bodySuccessStateNonEmptyStateItemRejectedContentColor,
    required this.bodySuccessStateNonEmptyStateItemExpiredContentColor,
    required this.bodySuccessStateNonEmptyStateItemCancelledContentColor,
    required this.bodySuccessStateNonEmptyStateItemSpacing,
    required this.bodySuccessStateNonEmptyStateItemDeclineButtonStyle,
    required this.bodySuccessStateNonEmptyStateItemAcceptButtonStyle,
    required this.bodySuccessStateNonEmptyStateItemDeclineAcceptButtonSpacing,
  });

  /// Fake constructor.
  InvitationListingScreenThemeExtension.fake()
    : bodySuccessStateNonEmptyStateItemGamePadding = myoroFake<EdgeInsets>(),
      bodySuccessStateNonEmptyStateScrollableStyle = myoroFake<MyoroScrollableStyle>(),
      bodySuccessStateNonEmptyStateItemGameTextStyle = myoroFake<TextStyle>(),
      bodySuccessStateNonEmptyStateItemInviterAndDatesTextStyle = myoroFake<TextStyle>(),
      bodySuccessStateNonEmptyStateItemStatusTextStyle = myoroFake<TextStyle>(),
      bodySuccessStateNonEmptyStateItemPendingBackgroundColor = myoroFake<Color>(),
      bodySuccessStateNonEmptyStateItemAcceptedBackgroundColor = myoroFake<Color>(),
      bodySuccessStateNonEmptyStateItemRejectedBackgroundColor = myoroFake<Color>(),
      bodySuccessStateNonEmptyStateItemExpiredBackgroundColor = myoroFake<Color>(),
      bodySuccessStateNonEmptyStateItemCancelledBackgroundColor = myoroFake<Color>(),
      bodySuccessStateNonEmptyStateItemPendingContentColor = myoroFake<Color>(),
      bodySuccessStateNonEmptyStateItemAcceptedContentColor = myoroFake<Color>(),
      bodySuccessStateNonEmptyStateItemRejectedContentColor = myoroFake<Color>(),
      bodySuccessStateNonEmptyStateItemExpiredContentColor = myoroFake<Color>(),
      bodySuccessStateNonEmptyStateItemCancelledContentColor = myoroFake<Color>(),
      bodySuccessStateNonEmptyStateItemSpacing = myoroFake<double>(),
      bodySuccessStateNonEmptyStateItemDeclineButtonStyle = myoroFake<MyoroIconTextButtonStyle>(),
      bodySuccessStateNonEmptyStateItemAcceptButtonStyle = myoroFake<MyoroIconTextButtonStyle>(),
      bodySuccessStateNonEmptyStateItemDeclineAcceptButtonSpacing = myoroFake<double>();

  /// Builder constructor.
  factory InvitationListingScreenThemeExtension.builder(TextTheme textTheme) {
    const bodySuccessStateNonEmptyStateItemStatusBackgroundColorAlpha = 0.25;

    return InvitationListingScreenThemeExtension(
      bodySuccessStateNonEmptyStateItemGamePadding: const EdgeInsets.all(kEdgeInsetsLength),
      bodySuccessStateNonEmptyStateScrollableStyle: const MyoroScrollableStyle(spacing: kEdgeInsetsLength),
      bodySuccessStateNonEmptyStateItemGameTextStyle: textTheme.titleSmall!,
      bodySuccessStateNonEmptyStateItemInviterAndDatesTextStyle: textTheme.headlineSmall!.copyWith(
        fontSize: MyoroFontSizeEnum.tiny.size,
      ),
      bodySuccessStateNonEmptyStateItemStatusTextStyle: textTheme.bodySmall!.copyWith(
        fontSize: MyoroFontSizeEnum.tiny.size,
      ),
      bodySuccessStateNonEmptyStateItemPendingBackgroundColor: MyoroColors.blue1.withValues(
        alpha: bodySuccessStateNonEmptyStateItemStatusBackgroundColorAlpha,
      ),
      bodySuccessStateNonEmptyStateItemAcceptedBackgroundColor: MyoroColors.green1.withValues(
        alpha: bodySuccessStateNonEmptyStateItemStatusBackgroundColorAlpha,
      ),
      bodySuccessStateNonEmptyStateItemRejectedBackgroundColor: MyoroColors.red1.withValues(
        alpha: bodySuccessStateNonEmptyStateItemStatusBackgroundColorAlpha,
      ),
      bodySuccessStateNonEmptyStateItemExpiredBackgroundColor: MyoroColors.gray2.withValues(
        alpha: bodySuccessStateNonEmptyStateItemStatusBackgroundColorAlpha,
      ),
      bodySuccessStateNonEmptyStateItemCancelledBackgroundColor: MyoroColors.gray3.withValues(
        alpha: bodySuccessStateNonEmptyStateItemStatusBackgroundColorAlpha,
      ),
      bodySuccessStateNonEmptyStateItemPendingContentColor: MyoroColors.blue1,
      bodySuccessStateNonEmptyStateItemAcceptedContentColor: MyoroColors.green1,
      bodySuccessStateNonEmptyStateItemRejectedContentColor: MyoroColors.red1,
      bodySuccessStateNonEmptyStateItemExpiredContentColor: MyoroColors.gray2,
      bodySuccessStateNonEmptyStateItemCancelledContentColor: MyoroColors.gray3,
      bodySuccessStateNonEmptyStateItemSpacing: kMyoroMultiplier * 2,
      bodySuccessStateNonEmptyStateItemDeclineButtonStyle: MyoroIconTextButtonStyle(
        textStyle: MyoroTextStyle(style: textTheme.bodySmall),
        backgroundIdleColor: MyoroColors.red1.withValues(alpha: 0.2),
        backgroundHoverColor: MyoroColors.red1.withValues(alpha: 0.4),
        backgroundTapColor: MyoroColors.red1.withValues(alpha: 0.6),
      ).singleContentColor(MyoroColors.red1),
      bodySuccessStateNonEmptyStateItemAcceptButtonStyle: MyoroIconTextButtonStyle(
        textStyle: MyoroTextStyle(style: textTheme.bodySmall),
        backgroundIdleColor: MyoroColors.green1.withValues(alpha: 0.2),
        backgroundHoverColor: MyoroColors.green1.withValues(alpha: 0.4),
        backgroundTapColor: MyoroColors.green1.withValues(alpha: 0.6),
      ).singleContentColor(MyoroColors.green1),
      bodySuccessStateNonEmptyStateItemDeclineAcceptButtonSpacing: kMyoroMultiplier * 2,
    );
  }

  /// Padding of the game of the non-empty state item.
  final EdgeInsets bodySuccessStateNonEmptyStateItemGamePadding;

  /// Scrollable style of the non-empty state.
  final MyoroScrollableStyle bodySuccessStateNonEmptyStateScrollableStyle;

  /// Text style of the game of the non-empty state item.
  final TextStyle bodySuccessStateNonEmptyStateItemGameTextStyle;

  /// Text style of the inviter and dates of the non-empty state item.
  final TextStyle bodySuccessStateNonEmptyStateItemInviterAndDatesTextStyle;

  /// [TextStyle] of an invitation's status [Widget].
  final TextStyle bodySuccessStateNonEmptyStateItemStatusTextStyle;

  /// Background [Color] of an invitation with the status of [InvitationStatusEnum.pending].
  final Color bodySuccessStateNonEmptyStateItemPendingBackgroundColor;

  /// Background [Color] of an invitation with the status of [InvitationStatusEnum.accepted].
  final Color bodySuccessStateNonEmptyStateItemAcceptedBackgroundColor;

  /// Background [Color] of an invitation with the status of [InvitationStatusEnum.rejected].
  final Color bodySuccessStateNonEmptyStateItemRejectedBackgroundColor;

  /// Background [Color] of an invitation with the status of [InvitationStatusEnum.expired].
  final Color bodySuccessStateNonEmptyStateItemExpiredBackgroundColor;

  /// Background [Color] of an invitation with the status of [InvitationStatusEnum.cancelled].
  final Color bodySuccessStateNonEmptyStateItemCancelledBackgroundColor;

  /// Content [Color] of an invitation with the status of [InvitationStatusEnum.pending].
  final Color bodySuccessStateNonEmptyStateItemPendingContentColor;

  /// Content [Color] of an invitation with the status of [InvitationStatusEnum.accepted].
  final Color bodySuccessStateNonEmptyStateItemAcceptedContentColor;

  /// Content [Color] of an invitation with the status of [InvitationStatusEnum.rejected].
  final Color bodySuccessStateNonEmptyStateItemRejectedContentColor;

  /// Content [Color] of an invitation with the status of [InvitationStatusEnum.expired].
  final Color bodySuccessStateNonEmptyStateItemExpiredContentColor;

  /// Content [Color] of an invitation with the status of [InvitationStatusEnum.cancelled].
  final Color bodySuccessStateNonEmptyStateItemCancelledContentColor;

  /// Spacing in between the content and the message of the non-empty state item.
  final double bodySuccessStateNonEmptyStateItemSpacing;

  /// Style of the decline button of the non-empty state item.
  final MyoroIconTextButtonStyle bodySuccessStateNonEmptyStateItemDeclineButtonStyle;

  /// Style of the accept button of the non-empty state item.
  final MyoroIconTextButtonStyle bodySuccessStateNonEmptyStateItemAcceptButtonStyle;

  /// Spacing in between the decline and accept buttons of the non-empty state item.
  final double bodySuccessStateNonEmptyStateItemDeclineAcceptButtonSpacing;

  /// Lerp function.
  @override
  InvitationListingScreenThemeExtension lerp(ThemeExtension<InvitationListingScreenThemeExtension>? other, double t) {
    if (other is! InvitationListingScreenThemeExtension) return this;
    return copyWith(
      bodySuccessStateNonEmptyStateItemGamePadding: EdgeInsets.lerp(
        bodySuccessStateNonEmptyStateItemGamePadding,
        other.bodySuccessStateNonEmptyStateItemGamePadding,
        t,
      ),
      bodySuccessStateNonEmptyStateScrollableStyle: MyoroScrollableStyle.lerp(
        bodySuccessStateNonEmptyStateScrollableStyle,
        other.bodySuccessStateNonEmptyStateScrollableStyle,
        t,
      ),
      bodySuccessStateNonEmptyStateItemGameTextStyle: TextStyle.lerp(
        bodySuccessStateNonEmptyStateItemGameTextStyle,
        other.bodySuccessStateNonEmptyStateItemGameTextStyle,
        t,
      ),
      bodySuccessStateNonEmptyStateItemInviterAndDatesTextStyle: TextStyle.lerp(
        bodySuccessStateNonEmptyStateItemInviterAndDatesTextStyle,
        other.bodySuccessStateNonEmptyStateItemInviterAndDatesTextStyle,
        t,
      ),
      bodySuccessStateNonEmptyStateItemStatusTextStyle: TextStyle.lerp(
        bodySuccessStateNonEmptyStateItemStatusTextStyle,
        other.bodySuccessStateNonEmptyStateItemStatusTextStyle,
        t,
      ),
      bodySuccessStateNonEmptyStateItemPendingBackgroundColor: Color.lerp(
        bodySuccessStateNonEmptyStateItemPendingBackgroundColor,
        other.bodySuccessStateNonEmptyStateItemPendingBackgroundColor,
        t,
      ),
      bodySuccessStateNonEmptyStateItemAcceptedBackgroundColor: Color.lerp(
        bodySuccessStateNonEmptyStateItemAcceptedBackgroundColor,
        other.bodySuccessStateNonEmptyStateItemAcceptedBackgroundColor,
        t,
      ),
      bodySuccessStateNonEmptyStateItemRejectedBackgroundColor: Color.lerp(
        bodySuccessStateNonEmptyStateItemRejectedBackgroundColor,
        other.bodySuccessStateNonEmptyStateItemRejectedBackgroundColor,
        t,
      ),
      bodySuccessStateNonEmptyStateItemExpiredBackgroundColor: Color.lerp(
        bodySuccessStateNonEmptyStateItemExpiredBackgroundColor,
        other.bodySuccessStateNonEmptyStateItemExpiredBackgroundColor,
        t,
      ),
      bodySuccessStateNonEmptyStateItemCancelledBackgroundColor: Color.lerp(
        bodySuccessStateNonEmptyStateItemCancelledBackgroundColor,
        other.bodySuccessStateNonEmptyStateItemCancelledBackgroundColor,
        t,
      ),
      bodySuccessStateNonEmptyStateItemPendingContentColor: Color.lerp(
        bodySuccessStateNonEmptyStateItemPendingContentColor,
        other.bodySuccessStateNonEmptyStateItemPendingContentColor,
        t,
      ),
      bodySuccessStateNonEmptyStateItemAcceptedContentColor: Color.lerp(
        bodySuccessStateNonEmptyStateItemAcceptedContentColor,
        other.bodySuccessStateNonEmptyStateItemAcceptedContentColor,
        t,
      ),
      bodySuccessStateNonEmptyStateItemRejectedContentColor: Color.lerp(
        bodySuccessStateNonEmptyStateItemRejectedContentColor,
        other.bodySuccessStateNonEmptyStateItemRejectedContentColor,
        t,
      ),
      bodySuccessStateNonEmptyStateItemExpiredContentColor: Color.lerp(
        bodySuccessStateNonEmptyStateItemExpiredContentColor,
        other.bodySuccessStateNonEmptyStateItemExpiredContentColor,
        t,
      ),
      bodySuccessStateNonEmptyStateItemCancelledContentColor: Color.lerp(
        bodySuccessStateNonEmptyStateItemCancelledContentColor,
        other.bodySuccessStateNonEmptyStateItemCancelledContentColor,
        t,
      ),
      bodySuccessStateNonEmptyStateItemSpacing: lerpDouble(
        bodySuccessStateNonEmptyStateItemSpacing,
        other.bodySuccessStateNonEmptyStateItemSpacing,
        t,
      ),
      bodySuccessStateNonEmptyStateItemDeclineButtonStyle: MyoroIconTextButtonStyle.lerp(
        bodySuccessStateNonEmptyStateItemDeclineButtonStyle,
        other.bodySuccessStateNonEmptyStateItemDeclineButtonStyle,
        t,
      ),
      bodySuccessStateNonEmptyStateItemAcceptButtonStyle: MyoroIconTextButtonStyle.lerp(
        bodySuccessStateNonEmptyStateItemAcceptButtonStyle,
        other.bodySuccessStateNonEmptyStateItemAcceptButtonStyle,
        t,
      ),
      bodySuccessStateNonEmptyStateItemDeclineAcceptButtonSpacing: lerpDouble(
        bodySuccessStateNonEmptyStateItemDeclineAcceptButtonSpacing,
        other.bodySuccessStateNonEmptyStateItemDeclineAcceptButtonSpacing,
        t,
      ),
    );
  }

  /// Builds the [MyoroTagStyle] of an invitation's status [Widget].
  MyoroTagStyle buildBodySuccessStateNonEmptyStateItemStatusTagStyle(
    BuildContext context,
    InvitationStatusEnum status,
  ) {
    final contentColor = switch (status) {
      InvitationStatusEnum.pending => bodySuccessStateNonEmptyStateItemPendingContentColor,
      InvitationStatusEnum.accepted => bodySuccessStateNonEmptyStateItemAcceptedContentColor,
      InvitationStatusEnum.rejected => bodySuccessStateNonEmptyStateItemRejectedContentColor,
      InvitationStatusEnum.expired => bodySuccessStateNonEmptyStateItemExpiredContentColor,
      InvitationStatusEnum.cancelled => bodySuccessStateNonEmptyStateItemCancelledContentColor,
    };

    return MyoroTagStyle(
      backgroundColor: switch (status) {
        InvitationStatusEnum.pending => bodySuccessStateNonEmptyStateItemPendingBackgroundColor,
        InvitationStatusEnum.accepted => bodySuccessStateNonEmptyStateItemAcceptedBackgroundColor,
        InvitationStatusEnum.rejected => bodySuccessStateNonEmptyStateItemRejectedBackgroundColor,
        InvitationStatusEnum.expired => bodySuccessStateNonEmptyStateItemExpiredBackgroundColor,
        InvitationStatusEnum.cancelled => bodySuccessStateNonEmptyStateItemCancelledBackgroundColor,
      },
      textStyle: MyoroTextStyle(style: bodySuccessStateNonEmptyStateItemStatusTextStyle.copyWith(color: contentColor)),
    );
  }
}
