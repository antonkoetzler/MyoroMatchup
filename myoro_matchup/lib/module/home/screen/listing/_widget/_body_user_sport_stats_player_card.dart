part of '../home_screen.dart';

/// Player card of [_BodyUserSportStats].
final class _BodyUserSportStatsPlayerCard extends StatelessWidget {
  /// Default constructor.
  const _BodyUserSportStatsPlayerCard(this._user, this._stats);

  /// User.
  final UserResponseDto _user;

  /// Stats.
  final UserStatsResponseDto _stats;

  /// Build function.
  @override
  Widget build(context) {
    final viewModel = context.read<HomeScreenViewModel>();
    final buildPlayerCardStyle = viewModel.buildPlayerCardStyle;

    return MyoroCard(
      style: buildPlayerCardStyle(context),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _BodyUserSportStatsPlayerCardProfilePicture(_user),
          Row(children: [_BodyUserSportStatsPlayerCardName(_user), _BodyUserSportStatsPlayerCardRating(_stats)]),
        ],
      ),
    );
  }
}
