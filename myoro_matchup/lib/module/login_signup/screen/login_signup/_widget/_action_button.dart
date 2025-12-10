part of '../widget/login_signup_screen.dart';

/// Generic button used in [_Buttons] of [LoginSignupScreen].
final class _ActionButton extends StatelessWidget {
  /// Default constructor.
  const _ActionButton({required this.text, required this.onTapUp});

  /// Action button text.
  final String text;

  /// If it's loading.
  final VoidCallback onTapUp;

  /// Build function.
  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<LoginSignupScreenThemeExtension>();
    final buttonTextStyle = themeExtension.buttonTextStyle;

    final style = MyoroIconTextButtonStyle(textStyle: MyoroTextStyle(style: buttonTextStyle));

    return MyoroIconTextButton(style: style.secondary(context), text: text, onTapUp: (_, _) => onTapUp());
  }
}
