import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Login screen.
final class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MyoroScreen(
      body: Column(mainAxisSize: MainAxisSize.min, children: [_Buttons()]),
    );
  }
}

final class _Buttons extends StatelessWidget {
  const _Buttons();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        _Button('Signup', () => throw UnimplementedError()),
        _Button('Login', () => throw UnimplementedError()),
      ],
    );
  }
}

final class _Button extends StatelessWidget {
  final String _text;
  final VoidCallback _onPressed;

  const _Button(this._text, this._onPressed);

  @override
  Widget build(BuildContext context) {
    return MyoroIconTextHoverButton(
      text: _text,
      onPressed: () => _onPressed.call(),
    );
  }
}
