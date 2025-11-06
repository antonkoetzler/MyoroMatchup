part of '../game_creation_screen.dart';

/// Price screen of [GameCreationScreen].
final class _PriceScreen extends StatelessWidget {
  const _PriceScreen();

  @override
  Widget build(context) {
    final gameCreationScreenPriceScreenTitle = localization.gameCreationScreenPriceScreenTitle;
    final gameCreationScreenPriceScreenMemberLabel = localization.gameCreationScreenPriceScreenMemberLabel;
    final gameCreationScreenPriceScreenDropInLabel = localization.gameCreationScreenPriceScreenDropInLabel;

    final themeExtension = context.resolveThemeExtension<GameCreationScreenThemeExtension>();
    final spacing = themeExtension.spacing;
    final priceScreenInputLabelTextStyle = themeExtension.priceScreenInputLabelTextStyle;

    final labelWidths = [
      _calculateTextWidth(gameCreationScreenPriceScreenMemberLabel, priceScreenInputLabelTextStyle),
      _calculateTextWidth(gameCreationScreenPriceScreenDropInLabel, priceScreenInputLabelTextStyle),
    ];
    final maxLabelWidth = labelWidths.reduce((a, b) => a > b ? a : b);

    final viewModel = context.read<GameCreationScreenViewModel>();
    final onMemberPriceChanged = viewModel.onMemberPriceChanged;
    final onDropInPriceChanged = viewModel.onDropInPriceChanged;

    return _Screen(
      title: gameCreationScreenPriceScreenTitle,
      child: Column(
        spacing: spacing,
        children: [
          _PriceScreenInput(gameCreationScreenPriceScreenMemberLabel, maxLabelWidth, onMemberPriceChanged),
          _PriceScreenInput(gameCreationScreenPriceScreenDropInLabel, maxLabelWidth, onDropInPriceChanged),
        ],
      ),
    );
  }

  double _calculateTextWidth(String text, TextStyle? style) {
    final textPainter = TextPainter(
      text: TextSpan(text: text, style: style),
      textDirection: TextDirection.ltr,
    );
    textPainter.layout();
    return textPainter.width;
  }
}
