part of '../widget/game_details_screen.dart';

/// User selection button of [_InvitationBottomSheet].
final class _InvitationBottomSheetUserSelectionButton extends StatelessWidget {
  const _InvitationBottomSheetUserSelectionButton();

  @override
  Widget build(context) {
    final invitationBottomSheetUserSelectionButtonUnselectedText =
        localization.invitationBottomSheetUserSelectionButtonUnselectedText;

    final viewModel = context.read<GameDetailsScreenViewModel>();
    final state = viewModel.state;
    final selectedUserController = state.selectedUserController;

    return ValueListenableBuilder(
      valueListenable: selectedUserController,
      builder: (_, selectedUser, _) {
        return MyoroIconTextButton(
          text: selectedUser?.username ?? invitationBottomSheetUserSelectionButtonUnselectedText,
          onTapUp: (_, _) => _UserSelectionBottomSheet.show(context),
        );
      },
    );
  }
}
