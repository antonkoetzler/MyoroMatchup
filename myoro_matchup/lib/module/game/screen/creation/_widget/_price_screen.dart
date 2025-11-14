part of '../game_creation_screen.dart';

/// Price screen of [GameCreationScreen].
final class _PriceScreen extends _Screen {
  _PriceScreen()
    : super(
        title: localization.gameCreationScreenPriceScreenTitle,
        onInit: (vm) => WidgetsBinding.instance.addPostFrameCallback((_) {
          vm.state.memberPriceFocusNode.requestFocus();
        }),
        builder: (context) {
          final gameCreationScreenPriceScreenMemberLabel = localization.gameCreationScreenPriceScreenMemberLabel;
          final gameCreationScreenPriceScreenDropInLabel = localization.gameCreationScreenPriceScreenDropInLabel;

          final themeExtension = context.resolveThemeExtension<GameCreationScreenThemeExtension>();
          final spacing = themeExtension.spacing;
          final priceScreenInputLabelTextStyle = themeExtension.priceScreenInputLabelTextStyle;

          double calculateTextWidth(String text, TextStyle? style) {
            final textPainter = TextPainter(
              text: TextSpan(text: text, style: style),
              textDirection: TextDirection.ltr,
            );
            textPainter.layout();
            return textPainter.width;
          }

          final labelWidths = [
            calculateTextWidth(gameCreationScreenPriceScreenMemberLabel, priceScreenInputLabelTextStyle),
            calculateTextWidth(gameCreationScreenPriceScreenDropInLabel, priceScreenInputLabelTextStyle),
          ];
          final maxLabelWidth = labelWidths.reduce((a, b) => a > b ? a : b);

          final viewModel = context.read<GameCreationScreenViewModel>();
          final onMemberPriceChanged = viewModel.onMemberPriceChanged;
          final onDropInPriceChanged = viewModel.onDropInPriceChanged;
          final state = viewModel.state;
          final locationController = state.locationController;
          final memberPriceFocusNode = state.memberPriceFocusNode;
          final dropInPriceFocusNode = state.dropInPriceFocusNode;
          final onNext = viewModel.onNext;

          return ValueListenableBuilder(
            valueListenable: locationController,
            builder: (_, location, _) {
              final currency = location?.address.country.currency ?? MyoroCurrencyEnum.usd;

              return Column(
                spacing: spacing,
                children: [
                  _PriceScreenInput(
                    label: gameCreationScreenPriceScreenMemberLabel,
                    labelWidth: maxLabelWidth,
                    currency: currency,
                    onChanged: onMemberPriceChanged,
                    focusNode: memberPriceFocusNode,
                    onFieldSubmitted: () => dropInPriceFocusNode.requestFocus(),
                  ),
                  _PriceScreenInput(
                    label: gameCreationScreenPriceScreenDropInLabel,
                    labelWidth: maxLabelWidth,
                    currency: currency,
                    onChanged: onDropInPriceChanged,
                    focusNode: dropInPriceFocusNode,
                    onFieldSubmitted: onNext,
                  ),
                ],
              );
            },
          );
        },
      );
}
