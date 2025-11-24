part of '../widget/invitation_listing_screen.dart';

/// Error state of [_Body].
final class _BodyErrorState extends StatelessWidget {
  /// Default constructor.
  const _BodyErrorState();

  @override
  Widget build(context) {
    final invitationListingScreenBodyErrorStateTitle = localization.invitationListingScreenBodyErrorStateTitle;
    final viewModel = context.read<InvitationListingScreenViewModel>();
    final state = viewModel.state;
    final invitationsRequestController = state.invitationsRequestController;
    final fetch = invitationsRequestController.fetch;
    return Center(
      child: MmErrorFeedback(title: invitationListingScreenBodyErrorStateTitle, onRetry: (_) => fetch()),
    );
  }
}
