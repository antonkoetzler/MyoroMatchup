part of '../widget/friend_listing_screen.dart';

/// Non-empty state of [_Body].
final class _BodyNonEmptyState extends StatelessWidget {
  /// Default constructor.
  const _BodyNonEmptyState(this._friends);

  /// Friends.
  final List<FriendRequestResponseDto> _friends;

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<FriendListingScreenThemeExtension>();
    final bodyNonEmptyStatePadding = themeExtension.bodyNonEmptyStatePadding;
    final bodyNonEmptyStateScrollableStyle = themeExtension.bodyNonEmptyStateScrollableStyle;

    final friendsLength = _friends.length;

    return Padding(
      padding: bodyNonEmptyStatePadding,
      child: Column(
        children: [
          Expanded(
            child: MyoroListScrollable(
              style: bodyNonEmptyStateScrollableStyle,
              itemCount: friendsLength,
              itemBuilder: (_, i) => _BodyNonEmptyStateItem(_friends[i]),
            ),
          ),
          const _BodyNonEmptyStateFilters(),
        ],
      ),
    );
  }
}
