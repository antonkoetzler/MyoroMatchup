part of '../widget/invitation_listing_screen.dart';

/// Body of [InvitationListingScreen].
final class _Body extends StatelessWidget {
  /// Default constructor.
  const _Body();

  /// Build function.
  @override
  Widget build(context) {
    final viewModel = context.read<InvitationListingScreenViewModel>();
    final state = viewModel.state;
    final invitationsRequestController = state.invitationsRequestController;

    return MyoroRequestWidget(
      requestController: invitationsRequestController,
      successBuilder: (_, invitations) {
        return invitations!.isEmpty ? const _BodySuccessStateEmptyState() : _BodySuccessStateNonEmptyState(invitations);
      },
    );
  }
}
