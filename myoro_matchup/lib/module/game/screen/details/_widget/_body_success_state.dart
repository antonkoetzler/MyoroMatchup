part of '../game_details_screen.dart';

/// Success body of [GameDetailsScreen].
final class _BodySuccessState extends StatelessWidget {
  const _BodySuccessState(this._game);

  final Game _game;

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<GameDetailsScreenThemeExtension>();

    return Padding(padding: themeExtension.bodySuccessStatePadding,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          YOU ARE HERE.
        ],
      ),
    );
  }
}
