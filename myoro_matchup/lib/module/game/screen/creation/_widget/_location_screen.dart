part of '../game_creation_screen.dart';

/// Location screen of [GameCreationScreen].
final class _LocationScreen extends StatelessWidget {
  const _LocationScreen();

  @override
  Widget build(context) {
    final gameCreationScreenLocationScreenTitle = localization.gameCreationScreenLocationScreenTitle;

    return _Screen(
      title: gameCreationScreenLocationScreenTitle,
      child: MmLocationInput(type: LocationTypeEnum.city),
    );
  }
}
