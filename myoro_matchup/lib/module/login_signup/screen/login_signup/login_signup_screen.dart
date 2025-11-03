import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:myoro_matchup/myoro_matchup.dart';
import 'package:provider/provider.dart';

part '_widget/_body.dart';
part '_widget/_active_button.dart';
part '_widget/_action_buttons.dart';
part '_widget/_form_type_switcher_button.dart';
part '_widget/_input.dart';
part '_widget/_inputs.dart';
part '_widget/_logo.dart';

/// Login/signup screen.
final class LoginSignupScreen extends StatelessWidget {
  const LoginSignupScreen({super.key});

  @override
  Widget build(_) {
    return InheritedProvider(
      create: (_) => getIt<LoginSignupScreenViewModel>(),
      child: const MyoroScreen(body: _Body()),
    );
  }
}
