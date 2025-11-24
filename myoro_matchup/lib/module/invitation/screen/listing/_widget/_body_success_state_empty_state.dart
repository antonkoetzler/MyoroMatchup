part of '../widget/invitation_listing_screen.dart';

/// Empty state of [_BodySuccessState].
final class _BodySuccessStateEmptyState extends StatelessWidget {
  /// Default constructor.
  const _BodySuccessStateEmptyState();

  @override
  Widget build(context) {
    final invitationListingScreenBodySuccessStateEmptyTitle =
        localization.invitationListingScreenBodySuccessStateEmptyTitle;

    final viewModel = context.read<InvitationListingScreenViewModel>();
    final state = viewModel.state;
    final invitationsRequestController = state.invitationsRequestController;
    final fetch = invitationsRequestController.fetch;

    return Center(
      child: MmEmptyFeedback(title: invitationListingScreenBodySuccessStateEmptyTitle, actionButtonCallback: fetch),
    );
  }
}
