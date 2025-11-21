import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:myoro_matchup/myoro_matchup.dart';
import 'package:provider/provider.dart';

part '../_widget/_body.dart';
part '../_widget/_body_error_state.dart';
part '../_widget/_body_success_state.dart';
part '../_widget/_loader.dart';
part '../_widget/_body_success_state_empty_state.dart';
part '../_widget/_body_success_state_non_empty_state.dart';
part '../_widget/_body_success_state_non_empty_state_item.dart';
part '../_widget/_body_success_state_non_empty_state_item_game.dart';
part '../_widget/_body_success_state_non_empty_state_item_inviter.dart';
part '../_widget/_body_success_state_non_empty_state_item_status.dart';
part '../_widget/_body_success_state_non_empty_state_item_dates.dart';
part '../_widget/_body_success_state_non_empty_state_item_message.dart';

/// Screen of the invitations listing.
final class InvitationListingScreen extends StatelessWidget {
  /// Default constructor.
  const InvitationListingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) => getIt<InvitationListingScreenViewModel>(),
      child: const MyoroScreen(appBar: MmAppBar(), body: _Body()),
    );
  }
}
