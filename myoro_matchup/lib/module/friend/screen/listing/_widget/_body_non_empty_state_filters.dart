part of '../widget/friend_listing_screen.dart';

/// Filter bar of [_BodyNonEmptyState].
final class _BodyNonEmptyStateFilters extends StatelessWidget {
  /// Default constructor.
  const _BodyNonEmptyStateFilters();

  @override
  Widget build(context) {
    final viewModel = context.read<FriendListingScreenViewModel>();
    final onFiltersCleared = viewModel.onFiltersCleared;
    final state = viewModel.state;
    final queryController = state.queryController;
    return MyoroFilterPanel(
      searchBarController: queryController,
      onFiltersCleared: onFiltersCleared,
      filters: const [_BodyNonEmptyStateFiltersStatusFilter()],
    );
  }
}
