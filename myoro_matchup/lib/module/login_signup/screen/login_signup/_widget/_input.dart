part of '../login_signup_screen.dart';

/// An input apart of [_Inputs].
final class _Input extends StatelessWidget {
  const _Input({required this.placeholder, this.obscurify = false, required this.controller});

  final String placeholder;
  final bool obscurify;
  final TextEditingController controller;

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<LoginSignupScreenThemeExtension>();

    return MyoroInput(
      configuration: MyoroInputConfiguration(
        placeholder: placeholder,
        obscureText: obscurify,
        showObscureButton: obscurify,
        controller: controller,
      ),
      style: MyoroInputStyle(inputTextStyle: themeExtension.inputTextStyle),
    );
  }
}
