part of '../home_screen.dart';

/// Player card of [_BodyUserSportStats].
final class _BodyUserSportStatsPlayerCard extends StatelessWidget {
  /// Default constructor.
  const _BodyUserSportStatsPlayerCard(this._user);

  /// User.
  final UserResponseDto _user;

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
          Flexible(child: _BodyUserSportStatsPlayerCardProfilePicture(_user)),
          _BodyUserSportStatsPlayerCardName(_user),
        ],
      ),
    );
  }
}
