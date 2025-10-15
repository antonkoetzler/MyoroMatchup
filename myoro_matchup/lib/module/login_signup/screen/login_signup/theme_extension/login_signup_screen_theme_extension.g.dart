// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_signup_screen_theme_extension.dart';

// **************************************************************************
// MyoroThemeExtensionGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [LoginSignupScreenThemeExtension] once the code is generated.
///
/// ```dart
/// class LoginSignupScreenThemeExtension with _$LoginSignupScreenThemeExtensionMixin {}
/// ```
mixin _$LoginSignupScreenThemeExtensionMixin on ThemeExtension<LoginSignupScreenThemeExtension> {
  LoginSignupScreenThemeExtension get self => this as LoginSignupScreenThemeExtension;

  @override
  LoginSignupScreenThemeExtension copyWith({
    EdgeInsets? bodyPadding,
    double? formTypeSwitcherButtonActionButtonsSpacing,
    double? inputsSpacing,
    TextStyle? inputTextStyle,
    TextStyle? buttonTextStyle,
    double? buttonsSpacing,
    TextStyle? formTypeSwitcherButtonTextStyle,
    Color? formTypeSwitcherButtonIdleColor,
    double? logoInputsSpacing,
    Color? formTypeSwitcherButtonTapColor,
  }) {
    return LoginSignupScreenThemeExtension(
      bodyPadding: bodyPadding ?? self.bodyPadding,
      formTypeSwitcherButtonActionButtonsSpacing:
          formTypeSwitcherButtonActionButtonsSpacing ?? self.formTypeSwitcherButtonActionButtonsSpacing,
      inputsSpacing: inputsSpacing ?? self.inputsSpacing,
      inputTextStyle: inputTextStyle ?? self.inputTextStyle,
      buttonTextStyle: buttonTextStyle ?? self.buttonTextStyle,
      buttonsSpacing: buttonsSpacing ?? self.buttonsSpacing,
      formTypeSwitcherButtonTextStyle: formTypeSwitcherButtonTextStyle ?? self.formTypeSwitcherButtonTextStyle,
      formTypeSwitcherButtonIdleColor: formTypeSwitcherButtonIdleColor ?? self.formTypeSwitcherButtonIdleColor,
      logoInputsSpacing: logoInputsSpacing ?? self.logoInputsSpacing,
      formTypeSwitcherButtonTapColor: formTypeSwitcherButtonTapColor ?? self.formTypeSwitcherButtonTapColor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is LoginSignupScreenThemeExtension &&
        other.runtimeType == runtimeType &&
        other.bodyPadding == self.bodyPadding &&
        other.formTypeSwitcherButtonActionButtonsSpacing == self.formTypeSwitcherButtonActionButtonsSpacing &&
        other.inputsSpacing == self.inputsSpacing &&
        other.inputTextStyle == self.inputTextStyle &&
        other.buttonTextStyle == self.buttonTextStyle &&
        other.buttonsSpacing == self.buttonsSpacing &&
        other.formTypeSwitcherButtonTextStyle == self.formTypeSwitcherButtonTextStyle &&
        other.formTypeSwitcherButtonIdleColor == self.formTypeSwitcherButtonIdleColor &&
        other.logoInputsSpacing == self.logoInputsSpacing &&
        other.formTypeSwitcherButtonTapColor == self.formTypeSwitcherButtonTapColor;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.bodyPadding,
      self.formTypeSwitcherButtonActionButtonsSpacing,
      self.inputsSpacing,
      self.inputTextStyle,
      self.buttonTextStyle,
      self.buttonsSpacing,
      self.formTypeSwitcherButtonTextStyle,
      self.formTypeSwitcherButtonIdleColor,
      self.logoInputsSpacing,
      self.formTypeSwitcherButtonTapColor,
    );
  }

  @override
  String toString() =>
      'LoginSignupScreenThemeExtension(\n'
      '  bodyPadding: ${self.bodyPadding},\n'
      '  formTypeSwitcherButtonActionButtonsSpacing: ${self.formTypeSwitcherButtonActionButtonsSpacing},\n'
      '  inputsSpacing: ${self.inputsSpacing},\n'
      '  inputTextStyle: ${self.inputTextStyle},\n'
      '  buttonTextStyle: ${self.buttonTextStyle},\n'
      '  buttonsSpacing: ${self.buttonsSpacing},\n'
      '  formTypeSwitcherButtonTextStyle: ${self.formTypeSwitcherButtonTextStyle},\n'
      '  formTypeSwitcherButtonIdleColor: ${self.formTypeSwitcherButtonIdleColor},\n'
      '  logoInputsSpacing: ${self.logoInputsSpacing},\n'
      '  formTypeSwitcherButtonTapColor: ${self.formTypeSwitcherButtonTapColor},\n'
      ');';
}
