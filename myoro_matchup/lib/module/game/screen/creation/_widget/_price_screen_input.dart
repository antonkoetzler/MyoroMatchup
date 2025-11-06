part of '../game_creation_screen.dart';

/// Input [Widget] of the price screen.
final class _PriceScreenInput extends StatelessWidget {
  /// Default constructor.
  const _PriceScreenInput(this._label, this._labelWidth, this._onChanged);

  /// Label.
  final String _label;

  /// Width of the label container.
  final double _labelWidth;

  /// On changed.
  final MyoroCurrencyInputOnChanged _onChanged;

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<GameCreationScreenThemeExtension>();
    final spacing = themeExtension.spacing;
    final priceScreenInputLabelTextStyle = themeExtension.priceScreenInputLabelTextStyle;

    return Row(
      spacing: spacing,
      children: [
        SizedBox(
          width: _labelWidth,
          child: Text(_label, style: priceScreenInputLabelTextStyle),
        ),
        Expanded(child: MyoroCurrencyInput(onChanged: _onChanged)),
      ],
    );
  }
}
