part of '../widget/game_details_screen.dart';

/// User search input of [_InvitationBottomSheet].
final class _InvitationBottomSheetUserSearchInput extends StatelessWidget {
  const _InvitationBottomSheetUserSearchInput();

  @override
  Widget build(context) {
    final gameDetailsScreenInvitationBottomSheetUserSearchInputLabel =
        localization.gameDetailsScreenInvitationBottomSheetUserSearchInputLabel;

    final viewModel = context.read<GameDetailsScreenViewModel>();
    final invitationBottomSheetUserSearchInputRequestCallback =
        viewModel.invitationBottomSheetUserSearchInputRequestCallback;
    final invitationBottomSheetUserSearchInputItemBuilder = viewModel.invitationBottomSheetUserSearchInputItemBuilder;
    final invitationBottomSheetUserSearchInputSelectedItemBuilder =
        viewModel.invitationBottomSheetUserSearchInputSelectedItemBuilder;

    return MyoroSearchDropdown<UserResponseDto>(
      label: gameDetailsScreenInvitationBottomSheetUserSearchInputLabel,
      requestCallback: invitationBottomSheetUserSearchInputRequestCallback,
      itemBuilder: invitationBottomSheetUserSearchInputItemBuilder,
      selectedItemBuilder: invitationBottomSheetUserSearchInputSelectedItemBuilder,
    );
  }
}
