import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:myoro_matchup/myoro_matchup.dart';
import 'package:provider/provider.dart';

part '../_widget/_app_bar.dart';
part '../_widget/_body_error_state.dart';
part '../_widget/_body_success_state.dart';
part '../_widget/_body_loader_state.dart';
part '../_widget/_body_success_state_tab_view.dart';
part '../_widget/_body_success_state_tab_view_info_tab.dart';
part '../_widget/_body_success_state_tab_view_players_tab.dart';
part '../_widget/_body_success_state_tab_view_rankings_tab.dart';
part '../_widget/_game_details_screen_state.dart';

/// Game details screen.
final class GameDetailsScreen extends StatefulWidget {
  /// Default constructor.
  const GameDetailsScreen({super.key, required this.gameId});

  /// Game ID.
  final int gameId;

  /// Create state function.
  @override
  State<GameDetailsScreen> createState() {
    return _GameDetailsScreenState();
  }
}
