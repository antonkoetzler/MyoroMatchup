import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:myoro_matchup/myoro_matchup.dart';
import 'package:provider/provider.dart';

/// Screen to create a new [Game].
final class GameCreationScreen extends StatelessWidget {
  const GameCreationScreen({super.key});

  @override
  Widget build(_) {
    return InheritedProvider(
      create: (_) => GameCreationScreenViewModel(),
      child: MyoroScreen(
        configuration: MyoroScreenConfiguration(appBar: _AppBar(), body: const _Body()),
      ),
    );
  }
}
