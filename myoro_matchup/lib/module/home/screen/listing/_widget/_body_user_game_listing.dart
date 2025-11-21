part of '../home_screen.dart';

/// User game listing of [_Body].
///
/// TODO: Need to refresh the games when a new game is registered. Maybe use event_bus.
final class _BodyUserGameListing extends StatelessWidget {
  const _BodyUserGameListing();

  @override
  Widget build(context) {
    final viewModel = context.read<HomeScreenViewModel>();
    final state = viewModel.state;
    final gamesRequestController = state.gamesRequestController;

    return ValueListenableBuilder(
      valueListenable: gamesRequestController,
      builder: (_, request, _) => switch (request.status) {
        MyoroRequestEnum.idle => const _Loader(),
        MyoroRequestEnum.loading => const _Loader(),
        MyoroRequestEnum.error => _BodyUserGameListingErrorState(),
        MyoroRequestEnum.success =>
          request.data!.isEmpty
              ? const _BodyUserGameListingEmptyFeedback()
              : _BodyUserGameListingListing(request.data!),
      },
    );
  }
}
