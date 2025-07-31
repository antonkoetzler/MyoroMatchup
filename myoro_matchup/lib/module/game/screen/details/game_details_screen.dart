import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:myoro_matchup/myoro_matchup.dart';
import 'package:provider/provider.dart';

part '_widget/_app_bar.dart';
part '_widget/_body.dart';
part '_widget/_body_error_state.dart';
part '_widget/_loader.dart';
part '_widget/_body_success_state.dart';

/// Game details screen.
final class GameDetailsScreen extends StatefulWidget {
  const GameDetailsScreen({super.key, required this.gameId});

  final int gameId;

  @override
  State<GameDetailsScreen> createState() => _GameDetailsScreenState();
}

final class _GameDetailsScreenState extends State<GameDetailsScreen> {
  late final _viewModel = getIt<GameDetailsScreenViewModel>()..init(widget.gameId);

  @override
  void dispose() {
    _viewModel.dispose();
    super.dispose();
  }

  @override
  Widget build(_) {
    return InheritedProvider.value(
      value: _viewModel,
      child: ValueListenableBuilder(
        valueListenable: _viewModel.state.gameRequestController,
        builder: (_, gameRequest, _) => switch (gameRequest.status) {
          MyoroRequestEnum.idle => const _Loader(),
          MyoroRequestEnum.loading => const _Loader(),
          MyoroRequestEnum.success => const _SuccessState(),
          MyoroRequestEnum.error => const _ErrorState(),
        },
      ),
    );
  }
}
