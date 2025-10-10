part of '../game_creation_screen.dart';

/// One-time price field of [GameCreationScreen].
final class _OneTimePriceField extends StatelessWidget {
  const _OneTimePriceField();

  @override
  Widget build(_) {
    return MyoroInput.number(
      configuration: MyoroInputConfiguration(label: localization.gameCreationScreenOneTimePriceFieldLabel),
    );
  }
}
