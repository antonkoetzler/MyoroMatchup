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
    double? inputsSpacing,
    TextStyle? inputTextStyle,
    TextStyle? buttonTextStyle,
    double? buttonsSpacing,
    TextStyle? formTypeSwitcherButtonTextStyle,
    Color? formTypeSwitcherButtonIdleColor,
    double? logoInputsSpacing,
    Color? formTypeSwitcherButtonTapColor,
    double? formSwitcherActionButtonsSpacing,
    EdgeInsets? bottomNavigationBarPadding,
    MyoroDialogModalStyle? forgotPasswordDialogStyle,
  }) {
    return LoginSignupScreenThemeExtension(
      bodyPadding: bodyPadding ?? self.bodyPadding,
      inputsSpacing: inputsSpacing ?? self.inputsSpacing,
      inputTextStyle: inputTextStyle ?? self.inputTextStyle,
      buttonTextStyle: buttonTextStyle ?? self.buttonTextStyle,
      buttonsSpacing: buttonsSpacing ?? self.buttonsSpacing,
      formTypeSwitcherButtonTextStyle: formTypeSwitcherButtonTextStyle ?? self.formTypeSwitcherButtonTextStyle,
      formTypeSwitcherButtonIdleColor: formTypeSwitcherButtonIdleColor ?? self.formTypeSwitcherButtonIdleColor,
      logoInputsSpacing: logoInputsSpacing ?? self.logoInputsSpacing,
      formTypeSwitcherButtonTapColor: formTypeSwitcherButtonTapColor ?? self.formTypeSwitcherButtonTapColor,
      formSwitcherActionButtonsSpacing: formSwitcherActionButtonsSpacing ?? self.formSwitcherActionButtonsSpacing,
      bottomNavigationBarPadding: bottomNavigationBarPadding ?? self.bottomNavigationBarPadding,
      forgotPasswordDialogStyle: forgotPasswordDialogStyle ?? self.forgotPasswordDialogStyle,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is LoginSignupScreenThemeExtension &&
        other.runtimeType == runtimeType &&
        other.bodyPadding == self.bodyPadding &&
        other.inputsSpacing == self.inputsSpacing &&
        other.inputTextStyle == self.inputTextStyle &&
        other.buttonTextStyle == self.buttonTextStyle &&
        other.buttonsSpacing == self.buttonsSpacing &&
        other.formTypeSwitcherButtonTextStyle == self.formTypeSwitcherButtonTextStyle &&
        other.formTypeSwitcherButtonIdleColor == self.formTypeSwitcherButtonIdleColor &&
        other.logoInputsSpacing == self.logoInputsSpacing &&
        other.formTypeSwitcherButtonTapColor == self.formTypeSwitcherButtonTapColor &&
        other.formSwitcherActionButtonsSpacing == self.formSwitcherActionButtonsSpacing &&
        other.bottomNavigationBarPadding == self.bottomNavigationBarPadding &&
        other.forgotPasswordDialogStyle == self.forgotPasswordDialogStyle;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.bodyPadding,
      self.inputsSpacing,
      self.inputTextStyle,
      self.buttonTextStyle,
      self.buttonsSpacing,
      self.formTypeSwitcherButtonTextStyle,
      self.formTypeSwitcherButtonIdleColor,
      self.logoInputsSpacing,
      self.formTypeSwitcherButtonTapColor,
      self.formSwitcherActionButtonsSpacing,
      self.bottomNavigationBarPadding,
      self.forgotPasswordDialogStyle,
    );
  }

  @override
  String toString() =>
      'LoginSignupScreenThemeExtension(\n'
      '  bodyPadding: ${self.bodyPadding},\n'
      '  inputsSpacing: ${self.inputsSpacing},\n'
      '  inputTextStyle: ${self.inputTextStyle},\n'
      '  buttonTextStyle: ${self.buttonTextStyle},\n'
      '  buttonsSpacing: ${self.buttonsSpacing},\n'
      '  formTypeSwitcherButtonTextStyle: ${self.formTypeSwitcherButtonTextStyle},\n'
      '  formTypeSwitcherButtonIdleColor: ${self.formTypeSwitcherButtonIdleColor},\n'
      '  logoInputsSpacing: ${self.logoInputsSpacing},\n'
      '  formTypeSwitcherButtonTapColor: ${self.formTypeSwitcherButtonTapColor},\n'
      '  formSwitcherActionButtonsSpacing: ${self.formSwitcherActionButtonsSpacing},\n'
      '  bottomNavigationBarPadding: ${self.bottomNavigationBarPadding},\n'
      '  forgotPasswordDialogStyle: ${self.forgotPasswordDialogStyle},\n'
      ');';
}
