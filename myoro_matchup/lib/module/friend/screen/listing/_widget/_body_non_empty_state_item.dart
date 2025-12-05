part of '../widget/friend_listing_screen.dart';

/// Item of [_BodyNonEmptyState].
final class _BodyNonEmptyStateItem extends StatelessWidget {
  /// Default constructor.
  const _BodyNonEmptyStateItem(this._friend);

  /// Friend.
  final FriendRequestResponseDto _friend;

  @override
  Widget build(context) {
    final status = _friend.status;
    final isPending = status.isPending;

    return GestureDetector(
      onTapUp: isPending ? (_) => _AcceptFriendRequestConfirmationBottomSheet.show(context, _friend) : null,
      child: Text(_friend.requesterName),
    );
  }
}
