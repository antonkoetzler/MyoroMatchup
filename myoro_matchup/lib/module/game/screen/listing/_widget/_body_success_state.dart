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
    final newGameButtonBottomOffset = themeExtension.newGameButtonBottomOffset;

    return Stack(
      alignment: Alignment.center,
      children: [
        _games.isEmpty
            ? const _BodySuccessStateEmptyFeedback()
            : Padding(
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
        Positioned(bottom: newGameButtonBottomOffset, child: const _NewGameButton()),
      ],
    );
  }
}
