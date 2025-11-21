import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:myoro_matchup/myoro_matchup.dart';
import 'package:provider/provider.dart';

part '_widget/_app_bar.dart';
part '_widget/_body.dart';
part '_widget/_body_user_game_listing_empty_feedback.dart.dart';
part '_widget/_game.dart';
part '_widget/_body_user_game_listing_listing.dart';
part '_widget/_body_user_sport_stats.dart';
part '_widget/_body_user_sport_stats_player_card.dart';
part '_widget/_body_user_sport_stats_stats.dart';
part '_widget/_body_user_sport_stats_sport_switcher.dart';
part '_widget/_body_user_game_listing.dart';
part '_widget/_body_user_sport_stats_error_state.dart';
part '_widget/_body_user_sport_stats_success_state.dart';
part '_widget/_loader.dart';
part '_widget/_body_user_game_listing_error_state.dart';
part '_widget/_body_user_sport_stats_player_card_profile_picture.dart';
part '_widget/_body_user_sport_stats_player_card_name.dart';
part '_widget/_body_user_sport_stats_player_card_rating.dart';
part '_widget/_body_user_sport_stats_stats_item.dart';

/// Home screen.
final class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(_) {
    return InheritedProvider(
      create: (_) => getIt<HomeScreenViewModel>(),
      child: MyoroScreen(appBar: _AppBar(), body: const _Body()),
    );
  }
}
