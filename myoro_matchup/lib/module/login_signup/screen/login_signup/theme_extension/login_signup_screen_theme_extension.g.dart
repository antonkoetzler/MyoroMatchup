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
    double? bodySpacing,
    double? inputsSpacing,
    TextStyle? inputTextStyle,
    TextStyle? buttonTextStyle,
    double? buttonsSpacing,
    TextStyle? formTypeSwitcherButtonTextStyle,
    Color? formTypeSwitcherButtonIdleColor,
    Color? formTypeSwitcherButtonTapColor,
  }) {
    return LoginSignupScreenThemeExtension(
      bodyPadding: bodyPadding ?? self.bodyPadding,
      bodySpacing: bodySpacing ?? self.bodySpacing,
      inputsSpacing: inputsSpacing ?? self.inputsSpacing,
      inputTextStyle: inputTextStyle ?? self.inputTextStyle,
      buttonTextStyle: buttonTextStyle ?? self.buttonTextStyle,
      buttonsSpacing: buttonsSpacing ?? self.buttonsSpacing,
      formTypeSwitcherButtonTextStyle: formTypeSwitcherButtonTextStyle ?? self.formTypeSwitcherButtonTextStyle,
      formTypeSwitcherButtonIdleColor: formTypeSwitcherButtonIdleColor ?? self.formTypeSwitcherButtonIdleColor,
      formTypeSwitcherButtonTapColor: formTypeSwitcherButtonTapColor ?? self.formTypeSwitcherButtonTapColor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is LoginSignupScreenThemeExtension &&
        other.runtimeType == runtimeType &&
        other.bodyPadding == self.bodyPadding &&
        other.bodySpacing == self.bodySpacing &&
        other.inputsSpacing == self.inputsSpacing &&
        other.inputTextStyle == self.inputTextStyle &&
        other.buttonTextStyle == self.buttonTextStyle &&
        other.buttonsSpacing == self.buttonsSpacing &&
        other.formTypeSwitcherButtonTextStyle == self.formTypeSwitcherButtonTextStyle &&
        other.formTypeSwitcherButtonIdleColor == self.formTypeSwitcherButtonIdleColor &&
        other.formTypeSwitcherButtonTapColor == self.formTypeSwitcherButtonTapColor;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.bodyPadding,
      self.bodySpacing,
      self.inputsSpacing,
      self.inputTextStyle,
      self.buttonTextStyle,
      self.buttonsSpacing,
      self.formTypeSwitcherButtonTextStyle,
      self.formTypeSwitcherButtonIdleColor,
      self.formTypeSwitcherButtonTapColor,
    );
  }

  @override
  String toString() =>
      'LoginSignupScreenThemeExtension(\n'
      '  bodyPadding: ${self.bodyPadding},\n'
      '  bodySpacing: ${self.bodySpacing},\n'
      '  inputsSpacing: ${self.inputsSpacing},\n'
      '  inputTextStyle: ${self.inputTextStyle},\n'
      '  buttonTextStyle: ${self.buttonTextStyle},\n'
      '  buttonsSpacing: ${self.buttonsSpacing},\n'
      '  formTypeSwitcherButtonTextStyle: ${self.formTypeSwitcherButtonTextStyle},\n'
      '  formTypeSwitcherButtonIdleColor: ${self.formTypeSwitcherButtonIdleColor},\n'
      '  formTypeSwitcherButtonTapColor: ${self.formTypeSwitcherButtonTapColor},\n'
      ');';
}
