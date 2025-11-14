part of '../widget/game_details_screen.dart';

/// Visibility section of [GameDetailsScreen].
final class _BodySuccessStateTabViewInfoTabVisibilitySection extends StatelessWidget {
  /// Default constructor.
  const _BodySuccessStateTabViewInfoTabVisibilitySection(this._game);

  /// Game.
  final GameResponseDto _game;

  @override
  Widget build(_) {
    final gameDetailsScreenBodySuccessStateTabViewInfoTabVisibilitySectionLabel =
        localization.gameDetailsScreenBodySuccessStateTabViewInfoTabVisibilitySectionLabel;

    final visibility = _game.visibility;
    final visibilityLabel = visibility.label;

    return MyoroField(
      label: gameDetailsScreenBodySuccessStateTabViewInfoTabVisibilitySectionLabel,
      data: visibilityLabel,
    );
  }
}
