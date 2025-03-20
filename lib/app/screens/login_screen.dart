import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

import '../theme_extensions/login_screen_theme_extension.dart'
    show LoginScreenThemeExtension;

/// Login screen.
final class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MyoroScreen(
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [_Title(), _LoginSignupButtons()],
      ),
    );
  }
}

final class _Title extends StatelessWidget {
  const _Title();

  @override
  Widget build(BuildContext context) {
    final themeExtension =
        context.resolveThemeExtension<LoginScreenThemeExtension>();

    // TODO: You are here.
    return Text('MyoroFitness', style: themeExtension.titleTextStyle);
  }
}

final class _LoginSignupButtons extends StatelessWidget {
  const _LoginSignupButtons();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
          child: _LoginSignupButton('Signup', () => throw UnimplementedError()),
        ),
        Expanded(
          child: _LoginSignupButton('Login', () => throw UnimplementedError()),
        ),
      ],
    );
  }
}

final class _LoginSignupButton extends StatelessWidget {
  final String _text;
  final VoidCallback _onPressed;

  const _LoginSignupButton(this._text, this._onPressed);

  @override
  Widget build(BuildContext context) {
    final themeExtension =
        context.resolveThemeExtension<LoginScreenThemeExtension>();

    return MyoroIconTextHoverButton(
      text: _text,
      configuration: themeExtension.loginSignupButtonConfiguration,
      onPressed: () => _onPressed.call(),
    );
  }
}
