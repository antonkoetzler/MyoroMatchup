part of '../widget/game_details_screen.dart';

/// Title of [_InvitationBottomSheet].
final class _InvitationBottomSheetTitle extends StatelessWidget {
  const _InvitationBottomSheetTitle();

  @override
  Widget build(context) {
    final gameDetailsScreenInvitationBottomSheetTitleText =
        localization.gameDetailsScreenInvitationBottomSheetTitleText;
    final themeExtension = context.resolveThemeExtension<GameDetailsScreenThemeExtension>();
    final invitationBottomSheetTitleTextStyle = themeExtension.invitationBottomSheetTitleTextStyle;
    return Text(gameDetailsScreenInvitationBottomSheetTitleText, style: invitationBottomSheetTitleTextStyle);
  }
}
