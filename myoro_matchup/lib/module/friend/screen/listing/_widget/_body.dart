part of '../widget/friend_listing_screen.dart';

/// Body of [FriendListingScreen].
final class _Body extends StatelessWidget {
  /// Default constructor.
  const _Body();

  /// Build function.
  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<FriendListingScreenViewModel>();
    final fetchFriends = viewModel.fetchFriends;

    return MyoroRequestWidget(
      request: fetchFriends,
      successBuilder: (_, friends) {
        return friends!.isEmpty ? const _BodyEmptyState() : _BodyNonEmptyState(friends);
      },
    );
  }
}
