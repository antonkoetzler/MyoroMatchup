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
        _FieldRow([_PictureField(), _NameField()]),
        _FieldRow([_NameField(), _SportField()]),
        _FieldRow([_CompetitivenessField(), _PlayerQuantityField()]),
        _FieldRow([_OneTimePriceField(), _MonthlyPriceField()]),
        _AgeRangeField(),
        _VisibilityField(),
        _LocationField(),
        _FrequencyDateTimeField(),
      ],
    );
  }
}
