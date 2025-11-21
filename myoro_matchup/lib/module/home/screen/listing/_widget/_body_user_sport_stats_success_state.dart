part of '../home_screen.dart';

/// Success state of [_BodyUserSportStats].
final class _BodyUserSportStatsSuccessState extends StatelessWidget {
  /// Default constructor.
  const _BodyUserSportStatsSuccessState(this._user);

  /// User.
  final UserResponseDto _user;

  /// Build function.
  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<HomeScreenThemeExtension>();
    final bodyUserSportStatsSuccessStateCardStyle = themeExtension.bodyUserSportStatsSuccessStateCardStyle;

    final viewModel = context.read<HomeScreenViewModel>();
    final state = viewModel.state;
    final selectedSportController = state.selectedSportController;

    return ValueListenableBuilder(
      valueListenable: selectedSportController,
      builder: (_, selectedSport, _) {
        final stats = viewModel.selectedSportStats;
        final statsItems = viewModel.statsItems;

        return MyoroCard(
          style: bodyUserSportStatsSuccessStateCardStyle,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _BodyUserSportStatsPlayerCard(_user, stats),
                  _BodyUserSportStatsSportSwitcher(selectedSport),
                ],
              ),
              Positioned(child: IntrinsicWidth(child: _BodyUserSportStatsStats(statsItems))),
            ],
          ),
        );
      },
    );
  }
}
