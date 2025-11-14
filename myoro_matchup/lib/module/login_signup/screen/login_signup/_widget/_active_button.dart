part of '../login_signup_screen.dart';

/// Generic button used in [_Buttons] of [LoginSignupScreen].
final class _ActionButton extends StatelessWidget {
  const _ActionButton({required this.text, required this.onTapUp});

  final String text;
  final VoidCallback onTapUp;

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<LoginSignupScreenThemeExtension>();
    final buttonTextStyle = themeExtension.buttonTextStyle;

    return MyoroIconTextButton(
      style: const MyoroIconTextButtonStyle().secondary(context),
      text: text,
      textConfiguration: MyoroTextConfiguration(style: buttonTextStyle),
      onTapUp: (_) => onTapUp(),
    );
  }
}
