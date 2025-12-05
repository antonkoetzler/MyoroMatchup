part of '../widget/friend_listing_screen.dart';

/// Status filter of [_BodyNonEmptyStateFilters].
final class _BodyNonEmptyStateFiltersStatusFilter extends StatelessWidget {
  /// Default constructor.
  const _BodyNonEmptyStateFiltersStatusFilter();

  @override
  Widget build(context) {
    final friendListingScreenBodyNonEmptyStateFiltersStatusFilterButtonLabel =
        localization.friendListingScreenBodyNonEmptyStateFiltersStatusFilterButtonLabel;

    final viewModel = context.read<FriendListingScreenViewModel>();
    final state = viewModel.state;
    final filteredStatusController = state.filteredStatusController;
    final statusFilterItemLabelBuilder = viewModel.statusFilterItemLabelBuilder;
    final statusFilterOnChanged = viewModel.statusFilterOnChanged;

    return ValueListenableBuilder(
      valueListenable: filteredStatusController,
      builder: (_, filteredStatus, _) {
        return MyoroRadioFilterButton<FriendRequestStatusEnum>(
          buttonLabel: friendListingScreenBodyNonEmptyStateFiltersStatusFilterButtonLabel,
          items: FriendRequestStatusEnum.values.toSet(),
          selectedItem: filteredStatus,
          itemLabelBuilder: statusFilterItemLabelBuilder,
          onChanged: statusFilterOnChanged,
        );
      },
    );
  }
}
