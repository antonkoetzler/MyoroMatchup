import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:myoro_matchup/myoro_matchup.dart';
import 'package:provider/provider.dart';

part '../_widget/_app_bar.dart';
part '../_widget/_body.dart';

/// User screen.
final class UserScreen extends StatelessWidget {
  /// Default constructor.
  const UserScreen({super.key});

  /// Build function.
  @override
  Widget build(_) {
    return InheritedProvider(
      create: (_) => getIt<UserScreenViewModel>(),
      child: MyoroScreen(appBar: _AppBar(), body: const _Body()),
    );
  }
}
