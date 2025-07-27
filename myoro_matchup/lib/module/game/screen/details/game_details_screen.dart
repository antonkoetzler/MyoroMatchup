import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Game details screen.
final class GameDetailsScreen extends StatelessWidget {
  const GameDetailsScreen({super.key});

  @override
  Widget build(_) {
    return const MyoroScreen(configuration: MyoroScreenConfiguration(body: Text('GameListingScreen')));
  }
}
