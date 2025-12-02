part of '../widget/game_details_screen.dart';

/// Use WhatsApp group chat bot section of [GameDetailsScreen].
final class _BodySuccessStateTabViewInfoTabUseWhatsAppGroupChatBotSection extends StatelessWidget {
  /// Default constructor.
  const _BodySuccessStateTabViewInfoTabUseWhatsAppGroupChatBotSection(this._game);

  /// Game.
  final GameResponseDto _game;

  @override
  Widget build(context) {
    final gameDetailsScreenBodySuccessStateTabViewInfoTabUseWhatsAppGroupChatBotSectionText =
        localization.gameDetailsScreenBodySuccessStateTabViewInfoTabUseWhatsAppGroupChatBotSectionText;

    final viewModel = context.read<GameDetailsScreenViewModel>();
    final state = viewModel.state;
    final useWhatsAppGroupChatBotController = state.useWhatsAppGroupChatBotController;
    final openUseWhatsAppGroupChatBotBottomSheet = viewModel.openUseWhatsAppGroupChatBotBottomSheet;
    final useWhatsAppGroupChatBotDisabledOnTapUp = viewModel.useWhatsAppGroupChatBotDisabledOnTapUp;

    final whatsAppGroupChatLink = _game.whatsAppGroupChatLink;

    return ValueListenableBuilder(
      valueListenable: useWhatsAppGroupChatBotController,
      builder: (_, useWhatsAppGroupChatBot, _) {
        return MyoroCheckbox(
          label: gameDetailsScreenBodySuccessStateTabViewInfoTabUseWhatsAppGroupChatBotSectionText,
          enabled: whatsAppGroupChatLink.isNotEmpty,
          value: useWhatsAppGroupChatBot,
          onChanged: (value) => openUseWhatsAppGroupChatBotBottomSheet(context, value),
          disabledOnTapUp: useWhatsAppGroupChatBotDisabledOnTapUp,
        );
      },
    );
  }
}
