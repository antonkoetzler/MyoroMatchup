part of '../game_listing_screen.dart';

/// [MyoroRequestEnum.success] state of [_Body].
final class _BodySuccessState extends StatelessWidget {
  const _BodySuccessState(this._games);

  /// The fetched [Game]s.
  final Set<Game> _games;

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<GameListingScreenThemeExtension>();
    final bodySuccessStateMargin = themeExtension.bodySuccessStateMargin;
    final newGameButtonOffset = themeExtension.newGameButtonOffset;

    return _games.isEmpty
        ? const _BodySuccessStateEmptyFeedback()
        : Stack(
            children: [
              Padding(
                padding: bodySuccessStateMargin,
                child: CustomScrollView(
                  slivers: [
                    SliverList.builder(
                      itemCount: _games.length,
                      itemBuilder: (_, index) => _Game(index == 0, _games.elementAt(index)),
                    ),
                  ],
                ),
              ),
              Positioned(right: newGameButtonOffset.dx, bottom: newGameButtonOffset.dy, child: const _NewGameButton()),
            ],
          );
  }
}
