part of '../home_screen.dart';

/// User sport stats of [_BodySuccessState].
final class _BodyUserSportStats extends StatelessWidget {
  const _BodyUserSportStats();

  @override
  Widget build(context) {
    final viewModel = context.read<HomeScreenViewModel>();
    final state = viewModel.state;
    final userRequestController = state.userRequestController;
    return MyoroRequestWidget<UserResponseDto>(
      requestController: userRequestController,
      errorShowIcon: false,
      successBuilder: (_, user) => _BodyUserSportStatsSuccessState(user!),
    );
  }
}
