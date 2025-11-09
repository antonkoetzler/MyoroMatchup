part of '../game_creation_screen.dart';

/// Input [Widget] of the price screen.
final class _PriceScreenInput extends StatelessWidget {
  /// Default constructor.
  const _PriceScreenInput({
    required this.label,
    required this.labelWidth,
    required this.currency,
    required this.onChanged,
    this.focusNode,
    required this.onFieldSubmitted,
  });

  /// Label.
  final String label;

  /// Width of the label container.
  final double labelWidth;

  /// Currency.
  final MyoroCurrencyEnum currency;

  /// On changed.
  final MyoroCurrencyInputOnChanged onChanged;

  /// Focus node.
  final FocusNode? focusNode;

  /// On field submitted.
  final VoidCallback onFieldSubmitted;

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<GameCreationScreenThemeExtension>();
    final spacing = themeExtension.spacing;
    final priceScreenInputLabelTextStyle = themeExtension.priceScreenInputLabelTextStyle;

    return Row(
      spacing: spacing,
      children: [
        SizedBox(
          width: labelWidth,
          child: Text(label, style: priceScreenInputLabelTextStyle),
        ),
        Expanded(
          child: MyoroCurrencyInput(
            currency: currency,
            canChangeCurrency: false,
            onChanged: onChanged,
            focusNode: focusNode,
            onFieldSubmitted: (_) => onFieldSubmitted(),
          ),
        ),
      ],
    );
  }
}
