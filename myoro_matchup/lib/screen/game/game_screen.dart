import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:myoro_matchup/myoro_matchup.dart';
import 'package:provider/provider.dart';

part '_widget/_app_bar.dart';
part '_widget/_body.dart';
part '_widget/_body_error_state.dart';
part '_widget/_body_loader.dart';
part '_widget/_body_success_state.dart';
part '_widget/_game.dart';

/// Home screen.
final class GameScreen extends StatelessWidget {
  const GameScreen({super.key});

  @override
  Widget build(_) {
    return InheritedProvider(
      create: (_) => getIt<GameScreenViewModel>()..fetchGames(),
      child: const MyoroScreen(
        configuration: MyoroScreenConfiguration(appBar: _AppBar(), body: _Body()),
      ),
    );
  }
}
