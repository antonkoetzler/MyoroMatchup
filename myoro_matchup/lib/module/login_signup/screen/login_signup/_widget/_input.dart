part of '../login_signup_screen.dart';

/// An input apart of [_Inputs].
final class _Input extends StatelessWidget {
  const _Input({required this.placeholder, required this.validation, required this.controller});

  final String placeholder;
  final MyoroInputValidation validation;
  final TextEditingController controller;

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<LoginSignupScreenThemeExtension>();

    return MyoroInput(
      configuration: MyoroInputConfiguration(
        placeholder: placeholder,
        controller: controller,
        inputTextStyle: themeExtension.inputTextStyle,
        validation: validation,
      ),
    );
  }
}
