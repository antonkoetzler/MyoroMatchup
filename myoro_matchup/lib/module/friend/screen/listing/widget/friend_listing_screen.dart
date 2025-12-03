import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:myoro_matchup/myoro_matchup.dart';
import 'package:provider/provider.dart';

part '../_widget/_app_bar.dart';
part '../_widget/_body.dart';
part '../_widget/_body_empty_state.dart';
part '../_widget/_body_non_empty_state.dart';

/// Friend listing screen.
final class FriendListingScreen extends StatelessWidget {
  /// Default constructor.
  const FriendListingScreen({super.key});

  /// Builds function.
  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) => getIt<FriendListingScreenViewModel>(),
      child: MyoroScreen(appBar: _AppBar(), body: const _Body()),
    );
  }
}
