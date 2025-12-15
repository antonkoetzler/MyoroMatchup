import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:myoro_matchup/myoro_matchup.dart';
import 'package:provider/provider.dart';

part '../_widget/_app_bar.dart';
part '../_widget/_error_feedback.dart';
part '../_widget/_body_success_state.dart';
part '../_widget/_loader.dart';
part '../_widget/_body_success_state_tab_view.dart';
part '../_widget/_body_success_state_tab_view_info_tab.dart';
part '../_widget/_body_success_state_tab_view_players_tab.dart';
part '../_widget/_body_success_state_tab_view_rankings_tab.dart';
part '../_widget/_body_success_state_tab_view_info_tab_frequency_day_time_section.dart';
part '../_widget/_body_success_state_tab_view_info_tab_price_section.dart';
part '../_widget/_body_success_state_tab_view_info_tab_age_range_section.dart';
part '../_widget/_body_success_state_tab_view_info_tab_visibility_section.dart';
part '../_widget/_body_success_state_tab_view_tab.dart';
part '../_widget/_body_success_state_tab_view_players_tab_content.dart';
part '../_widget/_body_success_state_tab_view_players_tab_action_button.dart';
part '../_widget/_invitation_bottom_sheet.dart';
part '../_widget/_invitation_bottom_sheet_title.dart';
part '../_widget/_invitation_bottom_sheet_user_search_input.dart';
part '../_widget/_invitation_bottom_sheet_message_input.dart';
part '../_widget/_invitation_bottom_sheet_action_buttons.dart';
part '../_widget/_invitation_bottom_sheet_action_button.dart';
part '../_widget/_body_success_state_tab_view_players_tab_content_success_state_item.dart';
part '../_widget/_player_details_bottom_sheet.dart';
part '../_widget/_send_friend_request_confirmation_bottom_sheet.dart';
part '../_widget/_block_user_confirmation_bottom_sheet.dart';
part '../_widget/_body_success_state_tab_view_players_tab_content_team_listing.dart';

/// Game details screen.
final class GameDetailsScreen extends StatelessWidget {
  /// Default constructor.
  const GameDetailsScreen(this._gameId, {super.key});

  /// Game ID.
  final int _gameId;

  /// Build function.
  @override
  Widget build(_) {
    return Provider(
      create: (_) => getIt<GameDetailsScreenViewModel>(param1: _gameId),
      child: Builder(
        builder: (context) {
          final viewModel = context.read<GameDetailsScreenViewModel>();
          final state = viewModel.state;
          final gameRequestController = state.gameRequestController;

          return ValueListenableBuilder(
            valueListenable: gameRequestController,
            builder: (_, gameRequest, _) {
              final status = gameRequest.status;
              final isSuccess = status.isSuccess;

              return MyoroScreen(
                appBar: isSuccess ? _AppBar(gameRequest.data!) : null,
                body: switch (status) {
                  MyoroRequestEnum.idle => const _Loader(),
                  MyoroRequestEnum.loading => const _Loader(),
                  MyoroRequestEnum.success => _BodySuccessState(gameRequest.data!),
                  MyoroRequestEnum.error => const _ErrorFeedback(),
                },
              );
            },
          );
        },
      ),
    );
  }
}
