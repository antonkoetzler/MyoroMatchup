part of '../game_listing_screen.dart';

/// Body of [GameListingScreen].
final class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(context) {
    final viewModel = context.read<GameListingScreenViewModel>();

    return ValueListenableBuilder(
      valueListenable: viewModel.state.gamesRequestNotifier,
      builder: (_, gamesRequest, _) => switch (gamesRequest.status) {
        MyoroRequestEnum.idle => const _BodyLoader(),
        MyoroRequestEnum.loading => const _BodyLoader(),
        MyoroRequestEnum.success => _BodySuccessState(gamesRequest.data!),
        MyoroRequestEnum.error => _BodyErrorState(gamesRequest.errorMessage!),
      },
    );
  }
}
