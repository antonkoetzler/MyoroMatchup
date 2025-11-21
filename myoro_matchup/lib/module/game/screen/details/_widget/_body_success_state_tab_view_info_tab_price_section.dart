part of '../widget/game_details_screen.dart';

/// Price section of [GameDetailsScreen].
final class _BodySuccessStateTabViewInfoTabPriceSection extends StatelessWidget {
  /// Default constructor.
  const _BodySuccessStateTabViewInfoTabPriceSection(this._game);

  /// Game.
  final GameResponseDto _game;

  @override
  Widget build(context) {
    final gameDetailsScreenBodySuccessStateTabViewInfoTabPriceSectionMemberPriceLabel =
        localization.gameDetailsScreenBodySuccessStateTabViewInfoTabPriceSectionMemberPriceLabel;
    final gameDetailsScreenBodySuccessStateTabViewInfoTabPriceSectionDropInPriceLabel =
        localization.gameDetailsScreenBodySuccessStateTabViewInfoTabPriceSectionDropInPriceLabel;

    final themeExtension = context.resolveThemeExtension<GameDetailsScreenThemeExtension>();
    final spacing = themeExtension.spacing;

    final price = _game.price;
    final memberPrice = price.memberPrice;
    final dropInPrice = price.dropInPrice;
    final currency = _game.location.country?.currency ?? MyoroCurrencyEnum.usd;

    return Row(
      spacing: spacing,
      children: [
        Expanded(
          child: MyoroField(
            label: gameDetailsScreenBodySuccessStateTabViewInfoTabPriceSectionMemberPriceLabel,
            data: memberPrice.toPrice(currency),
          ),
        ),
        Expanded(
          child: MyoroField(
            label: gameDetailsScreenBodySuccessStateTabViewInfoTabPriceSectionDropInPriceLabel,
            data: dropInPrice.toPrice(currency),
          ),
        ),
      ],
    );
  }
}
