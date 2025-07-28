import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part '_widget/_app_bar.dart';
part '_widget/_body.dart';

/// Game details screen.
final class GameDetailsScreen extends StatelessWidget {
  const GameDetailsScreen({super.key, required this.gameId});

  final int gameId;

  @override
  Widget build(_) {
    return const MyoroScreen(
      configuration: MyoroScreenConfiguration(appBar: _AppBar(), body: _Body()),
    );
  }
}
