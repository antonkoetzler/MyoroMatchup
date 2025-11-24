part of '../widget/invitation_listing_screen.dart';

/// Filter bar of [_BodySuccessStateNonEmptyState].
final class _BodySuccessStateNonEmptyStateFilters extends StatelessWidget {
  /// Default constructor.
  const _BodySuccessStateNonEmptyStateFilters();

  /// Build function.
  @override
  Widget build(context) {
    final viewModel = context.read<InvitationListingScreenViewModel>();
    final onFiltersCleared = viewModel.onFiltersCleared;
    final state = viewModel.state;
    final queryController = state.queryController;

    return MyoroFilterPanel(
      searchBarController: queryController,
      onFiltersCleared: onFiltersCleared,
      filters: const [_BodySuccessStateNonEmptyStateFiltersStatusFilter()],
    );
  }
}
