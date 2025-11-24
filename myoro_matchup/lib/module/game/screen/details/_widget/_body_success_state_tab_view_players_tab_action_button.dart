part of '../widget/game_details_screen.dart';

/// Action buttons of [GameDetailsScreen].
final class _BodySuccessStateTabViewPlayersTabActionButton extends StatelessWidget {
  const _BodySuccessStateTabViewPlayersTabActionButton();

  @override
  Widget build(context) {
    final bodySuccessStateTabViewPlayersTabActionButtonText =
        localization.gameDetailsScreenBodySuccessStateTabViewPlayersTabActionButtonText;

    final themeExtension = context.resolveThemeExtension<GameDetailsScreenThemeExtension>();
    final bodySuccessStateTabViewPlayersTabActionButtonTextStyle =
        themeExtension.bodySuccessStateTabViewPlayersTabActionButtonTextStyle;
    return MyoroIconTextButton(
      style: const MyoroIconTextButtonStyle()
          .secondary(context)
          .copyWith(textStyle: bodySuccessStateTabViewPlayersTabActionButtonTextStyle),
      text: bodySuccessStateTabViewPlayersTabActionButtonText,
      onTapUp: (_, _) => _InvitationBottomSheet.show(context),
    );
  }
}
