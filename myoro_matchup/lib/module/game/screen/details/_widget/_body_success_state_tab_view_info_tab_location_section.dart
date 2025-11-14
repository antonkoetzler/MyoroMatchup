part of '../widget/game_details_screen.dart';

/// Location section of [GameDetailsScreen].
final class _BodySuccessStateTabViewInfoTabLocationSection extends StatelessWidget {
  /// Default constructor.
  const _BodySuccessStateTabViewInfoTabLocationSection(this._game);

  /// Game.
  final GameResponseDto _game;

  @override
  Widget build(context) {
    final location = _game.location;
    final name = location.name;
    final address = location.address;
    final city = address.city;
    final country = address.country;
    final countryEmoji = country.emoji;

    final myoroFieldThemeExtension = context.resolveThemeExtension<MyoroFieldThemeExtension>();
    final dataTextStyle = myoroFieldThemeExtension.dataTextStyle;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(name, style: dataTextStyle),
        Text('$city, $countryEmoji', style: dataTextStyle),
      ],
    );
  }
}
