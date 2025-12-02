part of '../widget/game_details_screen.dart';

/// [Game] information tab of [GameDetailsScreen].
final class _BodySuccessStateTabViewInfoTab extends StatelessWidget {
  /// Default constructor.
  const _BodySuccessStateTabViewInfoTab(this._game);

  /// Game.
  final GameResponseDto _game;

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<GameDetailsScreenThemeExtension>();
    final spacing = themeExtension.spacing;

    return _BodySuccessStateTabViewTab(
      Column(
        spacing: spacing,
        mainAxisSize: MainAxisSize.min,
        children: [
          const _BodySuccessStateTabViewInfoTabWhatsAppGroupChatLinkSection(),
          _BodySuccessStateTabViewInfoTabUseWhatsAppGroupChatBotSection(_game),
          _BodySuccessStateTabViewInfoTabFrequencyDayTimeSection(_game),
          _BodySuccessStateTabViewInfoTabPriceSection(_game),
          Row(
            spacing: spacing,
            children: [
              Expanded(child: _BodySuccessStateTabViewInfoTabAgeRangeSection(_game)),
              Expanded(child: _BodySuccessStateTabViewInfoTabVisibilitySection(_game)),
            ],
          ),
        ],
      ),
    );
  }
}
