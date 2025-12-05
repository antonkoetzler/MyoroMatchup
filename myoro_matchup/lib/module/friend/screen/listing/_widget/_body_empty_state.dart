part of '../widget/friend_listing_screen.dart';

/// Empty state of [_Body].
final class _BodyEmptyState extends StatelessWidget {
  /// Default constructor.
  const _BodyEmptyState();

  @override
  Widget build(context) {
    final friendListingScreenBodyEmptyTitle = localization.friendListingScreenBodyEmptyTitle;

    final viewModel = context.read<FriendListingScreenViewModel>();
    final state = viewModel.state;
    final friendsRequestController = state.friendsRequestController;
    final fetch = friendsRequestController.fetch;

    return Center(
      child: MyoroEmptyFeedback(title: friendListingScreenBodyEmptyTitle, onActionButtonTapped: fetch),
    );
  }
}
