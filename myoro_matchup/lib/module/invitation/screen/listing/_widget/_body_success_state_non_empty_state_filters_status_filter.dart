part of '../widget/invitation_listing_screen.dart';

/// Status filter of [_BodySuccessStateNonEmptyStateFilters].
final class _BodySuccessStateNonEmptyStateFiltersStatusFilter extends StatelessWidget {
  /// Default constructor.
  const _BodySuccessStateNonEmptyStateFiltersStatusFilter();

  @override
  Widget build(context) {
    final invitationListingScreenBodySuccessStateNonEmptyStateFiltersStatusFilterButtonLabel =
        localization.invitationListingScreenBodySuccessStateNonEmptyStateFiltersStatusFilterButtonLabel;

    final viewModel = context.read<InvitationListingScreenViewModel>();
    final state = viewModel.state;
    final filteredStatusController = state.filteredStatusController;
    final statusFilterItemLabelBuilder = viewModel.statusFilterItemLabelBuilder;
    final statusFilterOnChanged = viewModel.statusFilterOnChanged;

    return ValueListenableBuilder(
      valueListenable: filteredStatusController,
      builder: (_, filteredStatus, _) {
        return MyoroRadioFilterButton<InvitationStatusEnum>(
          buttonLabel: invitationListingScreenBodySuccessStateNonEmptyStateFiltersStatusFilterButtonLabel,
          items: InvitationStatusEnum.values.toSet(),
          selectedItem: filteredStatus,
          itemLabelBuilder: statusFilterItemLabelBuilder,
          onChanged: statusFilterOnChanged,
        );
      },
    );
  }
}
