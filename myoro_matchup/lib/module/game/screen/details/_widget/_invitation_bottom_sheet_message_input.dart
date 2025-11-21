part of '../widget/game_details_screen.dart';

/// Message input of [_InvitationBottomSheet].
final class _InvitationBottomSheetMessageInput extends StatelessWidget {
  const _InvitationBottomSheetMessageInput();

  @override
  Widget build(context) {
    final gameDetailsScreenInvitationBottomSheetMessageInputLabel =
        localization.gameDetailsScreenInvitationBottomSheetMessageInputLabel;

    final viewModel = context.read<GameDetailsScreenViewModel>();
    final state = viewModel.state;
    final invitationMessageController = state.invitationMessageController;

    return MyoroInput(
      label: gameDetailsScreenInvitationBottomSheetMessageInputLabel,
      minLines: 1,
      maxLines: 10,
      controller: invitationMessageController,
    );
  }
}
