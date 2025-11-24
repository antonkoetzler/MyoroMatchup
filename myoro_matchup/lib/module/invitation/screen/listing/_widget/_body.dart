part of '../widget/invitation_listing_screen.dart';

/// Body of [InvitationListingScreen].
final class _Body extends StatelessWidget {
  /// Default constructor.
  const _Body();

  /// Build function.
  @override
  Widget build(context) {
    final viewModel = context.read<InvitationListingScreenViewModel>();
    final state = viewModel.state;
    final invitationsRequestController = state.invitationsRequestController;

    return ValueListenableBuilder(
      valueListenable: invitationsRequestController,
      builder: (_, invitationsRequest, _) => switch (invitationsRequest.status) {
        MyoroRequestEnum.idle => const _Loader(),
        MyoroRequestEnum.loading => const _Loader(),
        MyoroRequestEnum.error => const _BodyErrorState(),
        MyoroRequestEnum.success => _BodySuccessState(invitationsRequest.data!),
      },
    );
  }
}
