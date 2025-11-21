part of '../widget/game_details_screen.dart';

/// Action buttons of [GameDetailsScreen].
final class _BodySuccessStateTabViewPlayersTabActionButton extends StatelessWidget {
  const _BodySuccessStateTabViewPlayersTabActionButton();

  @override
  Widget build(context) {
    final bodySuccessStateTabViewPlayersTabActionButtonText =
        localization.gameDetailsScreenBodySuccessStateTabViewPlayersTabActionButtonText;

    final themeExtension = context.resolveThemeExtension<GameDetailsScreenThemeExtension>();
    final bodySuccessStateTabViewPlayersTabActionButtonTextConfiguration =
        themeExtension.bodySuccessStateTabViewPlayersTabActionButtonTextConfiguration;

    return MyoroIconTextButton(
      style: const MyoroIconTextButtonStyle().secondary(context),
      text: bodySuccessStateTabViewPlayersTabActionButtonText,
      textConfiguration: bodySuccessStateTabViewPlayersTabActionButtonTextConfiguration,
      onTapUp: (_, _) => _InvitationBottomSheet.show(context),
    );
  }
}
