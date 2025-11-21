part of '../home_screen.dart';

/// Stats item of [_BodyUserSportStats].
final class _BodyUserSportStatsStatsItem extends StatelessWidget {
  /// Default constructor.
  const _BodyUserSportStatsStatsItem(this._label, this._value);

  /// Label.
  final String _label;

  /// Value.
  final int _value;

  /// Build function.
  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<HomeScreenThemeExtension>();
    final bodyUserSportStatsStatsItemLabelTextStyle = themeExtension.bodyUserSportStatsStatsItemLabelTextStyle;
    final bodyUserSportStatsStatsItemValueTextStyle = themeExtension.bodyUserSportStatsStatsItemValueTextStyle;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(_label, style: bodyUserSportStatsStatsItemLabelTextStyle),
        Text(_value.toString(), style: bodyUserSportStatsStatsItemValueTextStyle),
      ],
    );
  }
}
