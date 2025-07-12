part of '../game_screen.dart';

/// Body of [GameScreen].
final class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<GameScreenViewModel>();

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
