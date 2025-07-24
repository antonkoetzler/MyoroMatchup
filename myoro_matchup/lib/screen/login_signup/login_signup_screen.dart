import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Login/signup screen.
final class LoginSignupScreen extends StatelessWidget {
  const LoginSignupScreen({super.key});

  @override
  Widget build(_) {
    return const MyoroScreen(configuration: MyoroScreenConfiguration(body: Text('Start')));
  }
}
