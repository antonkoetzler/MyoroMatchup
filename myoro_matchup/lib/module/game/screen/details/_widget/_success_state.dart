part of '../game_details_screen.dart';

/// Success state of [GameDetailsScreen].
final class _SuccessState extends StatelessWidget {
  const _SuccessState();

  @override
  Widget build(_) {
    return const MyoroScreen(
      configuration: MyoroScreenConfiguration(appBar: _AppBar(), body: _Body()),
    );
  }
}
