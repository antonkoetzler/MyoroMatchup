import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

/// Login screen.
final class LoginSignupScreen extends StatefulWidget {
  const LoginSignupScreen({super.key});

  @override
  State<LoginSignupScreen> createState() => _LoginSignupScreenState();
}

final class _LoginSignupScreenState extends State<LoginSignupScreen> {
  /// Controls which [LoginSignupScreenEnum] is currently in use.
  final _selectedModeNotifier = ValueNotifier<LoginSignupScreenEnum>(
    LoginSignupScreenEnum.signup,
  );

  @override
  void dispose() {
    _selectedModeNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final themeExtension =
        context.resolveThemeExtension<LoginSignupScreenThemeExtension>();

    return MyoroScreen(
      body: Center(
        child: Padding(
          padding: themeExtension.padding,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              spacing: themeExtension.spacing,
              children: [
                const Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [_Logo(), _Title()],
                ),
                Flexible(
                  child: ValueListenableBuilder(
                    valueListenable: _selectedModeNotifier,
                    builder: (_, LoginSignupScreenEnum selectedMode, __) {
                      return Column(
                        mainAxisSize: MainAxisSize.min,
                        spacing: themeExtension.spacing,
                        children: [
                          _Inputs(selectedMode),
                          _Buttons(selectedMode),
                        ],
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

final class _Logo extends StatelessWidget {
  const _Logo();

  @override
  Widget build(BuildContext context) {
    final themeExtension =
        context.resolveThemeExtension<LoginSignupScreenThemeExtension>();

    // Padding here instead of root [_LoginSignupScreenState]
    // so the [SingleChildScrollView] includes this top padding.
    return Padding(
      padding: EdgeInsets.only(top: themeExtension.padding.bottom),
      // TODO: Make a logo.
      child: Icon(
        Icons.sports_soccer,
        size: themeExtension.logoSize,
        color: themeExtension.logoColor,
      ),
    );
  }
}

final class _Title extends StatelessWidget {
  const _Title();

  @override
  Widget build(BuildContext context) {
    final themeExtension =
        context.resolveThemeExtension<LoginSignupScreenThemeExtension>();

    return Text('MyoroFitness', style: themeExtension.titleTextStyle);
  }
}

final class _Inputs extends StatelessWidget {
  final LoginSignupScreenEnum _loginScreenEnum;

  const _Inputs(this._loginScreenEnum);

  @override
  Widget build(BuildContext context) {
    return switch (_loginScreenEnum) {
      LoginSignupScreenEnum.login => const _LoginInputs(),
      LoginSignupScreenEnum.signup => const _SignupInputs(),
    };
  }
}

final class _LoginInputs extends StatelessWidget {
  const _LoginInputs();

  @override
  Widget build(BuildContext context) {
    final themeExtension =
        context.resolveThemeExtension<LoginSignupScreenThemeExtension>();

    return Column(
      mainAxisSize: MainAxisSize.min,
      spacing: themeExtension.inputSpacing,
      children: const [_Input('Username or email'), _Input('Password')],
    );
  }
}

final class _SignupInputs extends StatelessWidget {
  const _SignupInputs();

  @override
  Widget build(BuildContext context) {
    final themeExtension =
        context.resolveThemeExtension<LoginSignupScreenThemeExtension>();

    return Column(
      mainAxisSize: MainAxisSize.min,
      spacing: themeExtension.inputSpacing,
      children: const [
        _Input('Name'),
        _Input('Email'),
        _Input('Password'),
        _Input('Password confirmation'),
      ],
    );
  }
}

final class _Input extends StatelessWidget {
  final String _placeholder;

  const _Input(this._placeholder);

  @override
  Widget build(BuildContext context) {
    final themeExtension =
        context.resolveThemeExtension<LoginSignupScreenThemeExtension>();

    return MyoroInput(
      configuration: themeExtension.inputConfiguration.copyWith(
        placeholder: _placeholder,
      ),
    );
  }
}

final class _Buttons extends StatelessWidget {
  final LoginSignupScreenEnum _loginSignupEnum;

  const _Buttons(this._loginSignupEnum);

  @override
  Widget build(BuildContext context) {
    final themeExtension =
        context.resolveThemeExtension<LoginSignupScreenThemeExtension>();

    return Row(
      mainAxisSize: MainAxisSize.min,
      spacing: themeExtension.buttonSpacing,
      children: [
        Expanded(
          child: _Button(
            'Signup',
            isSelected: _loginSignupEnum.isSignup,
            onPressed: () => throw UnimplementedError(),
          ),
        ),
        Expanded(
          child: _Button(
            'Login',
            isSelected: _loginSignupEnum.isLogin,
            onPressed: () => throw UnimplementedError(),
          ),
        ),
      ],
    );
  }
}

final class _Button extends StatelessWidget {
  final String _text;
  final bool isSelected;
  final VoidCallback onPressed;

  const _Button(
    this._text, {
    required this.isSelected,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final themeExtension =
        context.resolveThemeExtension<LoginSignupScreenThemeExtension>();

    return MyoroIconTextHoverButton(
      text: _text,
      configuration: themeExtension.buttonConfiguration.copyWith(
        isHovered: isSelected,
      ),
      onPressed: onPressed,
    );
  }
}
