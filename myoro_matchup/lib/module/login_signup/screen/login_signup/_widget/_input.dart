part of '../widget/login_signup_screen.dart';

/// An input apart of [_Inputs].
final class _Input extends StatelessWidget {
  const _Input({
    required this.label,
    this.obscurify = false,
    required this.onFieldSubmitted,
    required this.focusNode,
    required this.controller,
  });

  final String label;
  final bool obscurify;
  final VoidCallback onFieldSubmitted;
  final FocusNode focusNode;
  final TextEditingController controller;

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<LoginSignupScreenThemeExtension>();

    return MyoroInput(
      style: MyoroInputStyle(inputTextStyle: themeExtension.inputTextStyle),
      label: label,
      obscureText: obscurify,
      showObscureTextButton: obscurify,
      onFieldSubmitted: (_) => onFieldSubmitted(),
      focusNode: focusNode,
      controller: controller,
    );
  }
}
