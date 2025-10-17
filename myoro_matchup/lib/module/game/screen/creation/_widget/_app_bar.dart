part of '../game_creation_screen.dart';

/// [MyoroScreenConfiguration.appBar] of [GameCreationScreen].
final class _AppBar extends MmAppBar {
  _AppBar()
    : super(
        configuration: MmAppBarConfiguration(
          title: localization.gameCreationScreenAppBarTitle,
          trailing: const Text('Bruh'),
        ),
      );
}
