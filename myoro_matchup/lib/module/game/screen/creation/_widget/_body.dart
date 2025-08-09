part of '../game_creation_screen.dart';

/// Body of [GameCreationScreen].
final class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<GameCreationScreenThemeExtension>();

    return Column(
      spacing: themeExtension.spacing,
      mainAxisSize: MainAxisSize.min,
      children: const [
        _BannerField(),
        _ProfilePictureField(),
        _FieldRow([Expanded(child: _NameField()), Expanded(child: _SportField())]),
        _FieldRow([Expanded(child: _CompetitivenessField()), Expanded(child: _PlayerQuantityField())]),
        _FieldRow([Expanded(child: _OneTimePriceField()), Expanded(child: _MonthlyPriceField())]),
        _AgeRangeField(),
        _VisibilityField(),
        _LocationField(),
        _FrequencyDateTimeField(),
      ],
    );
  }
}
