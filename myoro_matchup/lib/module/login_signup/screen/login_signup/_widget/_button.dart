part of '../widget/login_signup_screen.dart';

/// Button of [LoginSignupScreen].
final class _Button extends StatelessWidget {
  /// Default constructor.
  const _Button({this.icon, required this.text, this.isLoading = false, this.onTapUp});

  /// [MyoroIconTextButton.icon]
  final IconData? icon;

  /// [MyoroIconTextButton.text]
  final String text;

  /// [MyoroIconTextButton.isLoading]
  final bool isLoading;

  /// [MyoroIconTextButton.onTapUp]
  final VoidCallback? onTapUp;

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<LoginSignupScreenThemeExtension>();
    final buttonTextStyle = themeExtension.buttonTextStyle;

    return MyoroIconTextButton(
      style: const MyoroIconTextButtonStyle().bordered(context).copyWith(textStyle: buttonTextStyle),
      icon: icon,
      text: text,
      isLoading: isLoading,
      onTapUp: onTapUp != null ? (_, _) => onTapUp!() : null,
    );
  }
}
