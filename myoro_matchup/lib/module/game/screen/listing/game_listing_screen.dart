import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:myoro_matchup/myoro_matchup.dart';
import 'package:provider/provider.dart';

part '_widget/_app_bar.dart';
part '_widget/_body.dart';
part '_widget/_body_error_state.dart';
part '_widget/_body_loader.dart';
part '_widget/_body_success_state.dart';
part '_widget/_body_success_state_empty_feedback.dart';
part '_widget/_game.dart';

/// Game listing screne.
final class GameListingScreen extends StatelessWidget {
  const GameListingScreen({super.key});

  @override
  Widget build(_) {
    return InheritedProvider(
      create: (_) => getIt<GameListingScreenViewModel>()..fetchGames(),
      child: MyoroScreen(appBar: _AppBar(), body: const _Body()),
    );
  }
}
