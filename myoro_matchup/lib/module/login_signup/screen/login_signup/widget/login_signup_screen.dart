import 'package:flutter/material.dart';
import 'package:simple_icons/simple_icons.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:myoro_matchup/myoro_matchup.dart';
import 'package:provider/provider.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part '../_widget/_body.dart';
part '../_widget/_oauth_button.dart';
part '../_widget/_version_text.dart';

/// Login/signup screen.
final class LoginSignupScreen extends StatelessWidget {
  /// Default constructor.
  const LoginSignupScreen({super.key});

  /// Build function.
  @override
  Widget build(_) {
    return Provider(
      create: (_) => getIt<LoginSignupScreenViewModel>(),
      child: const MyoroScreen(body: _Body()),
    );
  }
}
