import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

part 'login_signup_screen_theme_extension.g.dart';

/// [ThemeExtension] of [LoginSignupScreen].
@immutable
@myoroThemeExtension
final class LoginSignupScreenThemeExtension extends ThemeExtension<LoginSignupScreenThemeExtension>
    with _$LoginSignupScreenThemeExtensionMixin {
  const LoginSignupScreenThemeExtension({
    required this.bodyPadding,
    required this.inputsSpacing,
    required this.inputTextStyle,
    required this.buttonTextStyle,
    required this.buttonsSpacing,
    required this.formTypeSwitcherButtonTextStyle,
    required this.formTypeSwitcherButtonIdleColor,
    required this.formTypeSwitcherButtonTapColor,
    required this.logoInputsSpacing,
    required this.inputsFormTypeSwitcherButtonSpacing,
  });

  LoginSignupScreenThemeExtension.fake()
    : bodyPadding = myoroFake<EdgeInsets>(),
      inputsSpacing = faker.randomGenerator.decimal(scale: 20),
      inputTextStyle = myoroFake<TextStyle>(),
      buttonTextStyle = myoroFake<TextStyle>(),
      buttonsSpacing = faker.randomGenerator.decimal(scale: 20),
      formTypeSwitcherButtonTextStyle = myoroFake<TextStyle>(),
      formTypeSwitcherButtonIdleColor = myoroFake<Color>(),
      formTypeSwitcherButtonTapColor = myoroFake<Color>(),
      logoInputsSpacing = faker.randomGenerator.decimal(scale: 20),
      inputsFormTypeSwitcherButtonSpacing = faker.randomGenerator.decimal(scale: 20);

  LoginSignupScreenThemeExtension.builder(TextTheme textTheme)
    : bodyPadding = const EdgeInsets.all(kEdgeInsetsLength * 2),
      inputsSpacing = kMyoroMultiplier * 2,
      inputTextStyle = textTheme.bodySmall!,
      buttonTextStyle = textTheme.bodyMedium!,
      buttonsSpacing = kMyoroMultiplier * 2,
      formTypeSwitcherButtonTextStyle = textTheme.headlineSmall!,
      formTypeSwitcherButtonIdleColor = MyoroColors.blue1.darken(0.05),
      formTypeSwitcherButtonTapColor = MyoroColors.blue1,
      logoInputsSpacing = kMyoroMultiplier * 6,
      inputsFormTypeSwitcherButtonSpacing = kMyoroMultiplier;

  /// Padding of [LoginSignupScreen].
  final EdgeInsets bodyPadding;

  /// Spacing between the [MyoroInput]s.
  final double inputsSpacing;

  /// [MyoroInputConfiguration.inputTextStyle] of an input of [LoginSignupScreen].
  final TextStyle inputTextStyle;

  /// [TextStyle] of a generic button of [LoginSignupScreen].
  final TextStyle buttonTextStyle;

  /// Spacing between buttons.
  final double buttonsSpacing;

  /// [TextStyle] of the [LoginSignupScreenEnum] form switcher button.
  final TextStyle formTypeSwitcherButtonTextStyle;

  /// [MyoroTapStatusEnum.idle]'s [Color] of the [LoginSignupScreenEnum] form switcher button.
  final Color formTypeSwitcherButtonIdleColor;

  /// Spacing between logo and inputs.
  final double logoInputsSpacing;

  /// [MyoroTapStatusEnum.tap]'s [Color] of the [LoginSignupScreenEnum] form switcher button.
  final Color formTypeSwitcherButtonTapColor;

  /// Spacing between the innputs and form switcher button.
  final double inputsFormTypeSwitcherButtonSpacing;

  @override
  LoginSignupScreenThemeExtension lerp(covariant ThemeExtension<LoginSignupScreenThemeExtension>? other, double t) {
    if (other is! LoginSignupScreenThemeExtension) return this;
    return copyWith(
      bodyPadding: EdgeInsets.lerp(bodyPadding, other.bodyPadding, t),
      inputsSpacing: lerpDouble(inputsSpacing, other.inputsSpacing, t),
      inputTextStyle: TextStyle.lerp(inputTextStyle, other.inputTextStyle, t),
      buttonTextStyle: TextStyle.lerp(buttonTextStyle, other.buttonTextStyle, t),
      buttonsSpacing: lerpDouble(buttonsSpacing, other.buttonsSpacing, t),
      formTypeSwitcherButtonTextStyle: TextStyle.lerp(
        formTypeSwitcherButtonTextStyle,
        other.formTypeSwitcherButtonTextStyle,
        t,
      ),
      formTypeSwitcherButtonIdleColor: Color.lerp(
        formTypeSwitcherButtonIdleColor,
        other.formTypeSwitcherButtonIdleColor,
        t,
      ),
      formTypeSwitcherButtonTapColor: Color.lerp(
        formTypeSwitcherButtonTapColor,
        other.formTypeSwitcherButtonTapColor,
        t,
      ),
      logoInputsSpacing: lerpDouble(logoInputsSpacing, other.logoInputsSpacing, t),
      inputsFormTypeSwitcherButtonSpacing: lerpDouble(
        inputsFormTypeSwitcherButtonSpacing,
        other.inputsFormTypeSwitcherButtonSpacing,
        t,
      ),
    );
  }
}
