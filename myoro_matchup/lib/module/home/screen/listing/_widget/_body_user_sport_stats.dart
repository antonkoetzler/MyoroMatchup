part of '../home_screen.dart';

/// User sport stats of [_BodySuccessState].
final class _BodyUserSportStats extends StatelessWidget {
  const _BodyUserSportStats();

  @override
  Widget build(context) {
    final viewModel = context.read<HomeScreenViewModel>();
    final state = viewModel.state;
    final userRequestController = state.userRequestController;

    return ValueListenableBuilder(
      valueListenable: userRequestController,
      builder: (_, request, _) => switch (request.status) {
        MyoroRequestEnum.idle => const _Loader(),
        MyoroRequestEnum.loading => const _Loader(),
        MyoroRequestEnum.error => const _BodyUserSportStatsErrorState(),
        MyoroRequestEnum.success => _BodyUserSportStatsSuccessState(request.data!),
      },
    );
  }
}
