part of '../game_listing_screen.dart';

/// Body of [GameListingScreen].
final class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(context) {
    final viewModel = context.read<GameListingScreenViewModel>();
    final state = viewModel.state;
    final requestController = state.requestController;

    return ValueListenableBuilder(
      valueListenable: requestController,
      builder: (_, request, _) => switch (request.status) {
        MyoroRequestEnum.idle => const _BodyLoader(),
        MyoroRequestEnum.loading => const _BodyLoader(),
        MyoroRequestEnum.success => _BodySuccessState(request.data!),
        MyoroRequestEnum.error => const _BodyErrorState(),
      },
    );
  }
}
