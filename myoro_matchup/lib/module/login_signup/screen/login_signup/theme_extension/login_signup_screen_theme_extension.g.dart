// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_signup_screen_theme_extension.dart';

// **************************************************************************
// MyoroThemeExtensionGenerator
// **************************************************************************

/// Apply this mixin to [LoginSignupScreenThemeExtension] once the code is generated.
///
/// ```dart
/// class LoginSignupScreenThemeExtension with _$LoginSignupScreenThemeExtensionMixin {}
/// ```
mixin _$LoginSignupScreenThemeExtensionMixin
    on ThemeExtension<LoginSignupScreenThemeExtension> {
  LoginSignupScreenThemeExtension get self =>
      this as LoginSignupScreenThemeExtension;

  @override
  LoginSignupScreenThemeExtension copyWith({
    EdgeInsets? bodyPadding,
    double? bodySpacing,
    double? inputsSpacing,
  }) {
    return LoginSignupScreenThemeExtension(
      bodyPadding: bodyPadding ?? self.bodyPadding,
      bodySpacing: bodySpacing ?? self.bodySpacing,
      inputsSpacing: inputsSpacing ?? self.inputsSpacing,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is LoginSignupScreenThemeExtension &&
        other.runtimeType == runtimeType &&
        other.bodyPadding == self.bodyPadding &&
        other.bodySpacing == self.bodySpacing &&
        other.inputsSpacing == self.inputsSpacing;
  }

  @override
  int get hashCode {
    return Object.hash(self.bodyPadding, self.bodySpacing, self.inputsSpacing);
  }

  @override
  String toString() =>
      'LoginSignupScreenThemeExtension(\n'
      '  bodyPadding: ${self.bodyPadding},\n'
      '  bodySpacing: ${self.bodySpacing},\n'
      '  inputsSpacing: ${self.inputsSpacing},\n'
      ');';
}
