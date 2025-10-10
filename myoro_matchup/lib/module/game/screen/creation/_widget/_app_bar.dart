part of '../game_creation_screen.dart';

/// App bar of [GameCreationScreen].
final class _AppBar extends MmAppBar {
  _AppBar()
    : super(
        configuration: MmAppBarConfiguration(
          title: localization.gameCreationScreenAppBarTitle,
          trailing: const Text('SOON'),
        ),
      );
}
