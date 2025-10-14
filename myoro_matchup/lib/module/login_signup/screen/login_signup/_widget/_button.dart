part of '../login_signup_screen.dart';

/// Generic button used in [_Buttons] of [LoginSignupScreen].
final class _Button extends StatelessWidget {
  const _Button({required this.text, required this.onTapUp});

  final String text;
  final VoidCallback onTapUp;

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<LoginSignupScreenThemeExtension>();
    final buttonTextStyle = themeExtension.buttonTextStyle;

    return MyoroIconTextButton(
      configuration: MyoroIconTextButtonConfiguration(
        textConfiguration: MyoroTextConfiguration(text: text, style: buttonTextStyle),
        onTapUp: (_) => onTapUp(),
      ),
      style: const MyoroIconTextButtonStyle().secondary(context),
    );
  }
}
