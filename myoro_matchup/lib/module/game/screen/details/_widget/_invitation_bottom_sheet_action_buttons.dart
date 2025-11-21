part of '../widget/game_details_screen.dart';

/// Action buttons of [_InvitationBottomSheet].
final class _InvitationBottomSheetActionButtons extends StatelessWidget {
  /// Default constructor.
  const _InvitationBottomSheetActionButtons(this._request, this._sendInvitationFormController);

  /// Request.
  final MyoroRequest<String> _request;

  /// Send invitation form controller.
  final MyoroFormController<String> _sendInvitationFormController;

  /// Cancel invitation.
  @override
  Widget build(context) {
    final gameDetailsScreenInvitationBottomSheetActionButtonsCancelButtonText =
        localization.gameDetailsScreenInvitationBottomSheetActionButtonsCancelButtonText;
    final gameDetailsScreenInvitationBottomSheetActionButtonsSendButtonText =
        localization.gameDetailsScreenInvitationBottomSheetActionButtonsSendButtonText;

    final themeExtension = context.resolveThemeExtension<GameDetailsScreenThemeExtension>();
    final invitationBottomSheetActionButtonsSpacing = themeExtension.invitationBottomSheetActionButtonsSpacing;

    final viewModel = context.read<GameDetailsScreenViewModel>();
    final cancelInvitation = viewModel.cancelInvitation;

    final fetch = _sendInvitationFormController.fetch;
    final status = _request.status;
    final isLoading = status.isLoading;

    return Row(
      spacing: invitationBottomSheetActionButtonsSpacing,
      children: [
        Expanded(
          child: _InvitationBottomSheetActionButton(
            gameDetailsScreenInvitationBottomSheetActionButtonsCancelButtonText,
            cancelInvitation,
            false,
          ),
        ),
        Expanded(
          child: _InvitationBottomSheetActionButton(
            gameDetailsScreenInvitationBottomSheetActionButtonsSendButtonText,
            fetch,
            true,
            isLoading,
          ),
        ),
      ],
    );
  }
}
