import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

part '../_widget/_app_bar.dart';
part '../_widget/_body.dart';
part '../_widget/_body_profile_picture.dart';
part '../_widget/_body_username.dart';
part '../_widget/_body_name.dart';
part '../_widget/_body_location.dart';
part '../_widget/_body_profile_visibility.dart';
part '../_widget/_body_blocked_users.dart';
part '../_widget/_body_subscription_plan.dart';
part '../_widget/_body_subscription_status.dart';
part '../_widget/_body_payment_method.dart';
part '../_widget/_body_card.dart';
part '../_widget/_body_user_details.dart';
part '../_widget/_body_profile_visibility_bottom_sheet.dart';
part '../_widget/_location_editing_bottom_sheet.dart';
part '../_widget/_unblock_user_confirmation_bottom_sheet.dart';

/// User details screen.
final class UserDetailsScreen extends StatelessWidget {
  /// Default constructor.
  const UserDetailsScreen({super.key});

  /// Build function.
  @override
  Widget build(_) {
    return Provider(
      create: (_) => getIt<UserDetailsScreenViewModel>(),
      child: MyoroScreen(appBar: _AppBar(), body: const _Body()),
    );
  }
}
