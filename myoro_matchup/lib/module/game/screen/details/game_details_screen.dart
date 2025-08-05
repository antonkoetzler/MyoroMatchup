import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:myoro_matchup/myoro_matchup.dart';
import 'package:provider/provider.dart';

part '_widget/_app_bar.dart';
part '_widget/_app_bar_options_button.dart';
part '_widget/_body_error_state.dart';
part '_widget/_body_success_state.dart';
part '_widget/_body_loader_state.dart';
part '_widget/_body_success_state_tab_view.dart';
part '_widget/_body_success_state_tab_view_info_tab.dart';
part '_widget/_body_success_state_tab_view_players_tab.dart';
part '_widget/_body_success_state_tab_view_rankings_tab.dart';

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
        builder: (_, gameRequest, _) {
          return MyoroScreen(
            configuration: MyoroScreenConfiguration(
              appBar: gameRequest.status.isSuccess ? _AppBar(gameRequest.data!) : null,
              body: switch (gameRequest.status) {
                MyoroRequestEnum.idle => const _BodyLoaderState(),
                MyoroRequestEnum.loading => const _BodyLoaderState(),
                MyoroRequestEnum.success => _BodySuccessState(gameRequest.data!),
                MyoroRequestEnum.error => const _ErrorState(),
              },
            ),
          );
        },
      ),
    );
  }
}
