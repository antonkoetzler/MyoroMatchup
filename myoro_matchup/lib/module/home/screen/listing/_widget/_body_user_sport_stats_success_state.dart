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
    final bodyUserSportStatsSuccessStateRowSpacing = themeExtension.bodyUserSportStatsSuccessStateRowSpacing;
    final bodyUserSportStatsSuccessStateColumnSpacing = themeExtension.bodyUserSportStatsSuccessStateColumnSpacing;

    final viewModel = context.read<HomeScreenViewModel>();
    final state = viewModel.state;
    final selectedSportController = state.selectedSportController;

    return ValueListenableBuilder(
      valueListenable: selectedSportController,
      builder: (_, selectedSport, _) {
        final selectedSportStats = viewModel.selectedSportStats;
        final statsItems = viewModel.statsItems;

        return MyoroCard(
          style: bodyUserSportStatsSuccessStateCardStyle,
          child: Row(
            spacing: bodyUserSportStatsSuccessStateRowSpacing,
            children: [
              _BodyUserSportStatsPlayerCard(_user),
              Expanded(
                child: Column(
                  spacing: bodyUserSportStatsSuccessStateColumnSpacing,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    _BodyUserSportStatsStats(_user, selectedSportStats, statsItems),
                    Row(
                      spacing: bodyUserSportStatsSuccessStateRowSpacing,
                      children: [
                        const Expanded(child: _BodyUserSportStatsEditProfileButton()),
                        Expanded(child: _BodyUserSportStatsSportSwitcher(selectedSport)),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
