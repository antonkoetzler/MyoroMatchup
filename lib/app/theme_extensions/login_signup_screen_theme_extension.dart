import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

/// [ThemeExtension] of [LoginSignupScreen].
final class LoginSignupScreenThemeExtension
    extends ThemeExtension<LoginSignupScreenThemeExtension> {
  /// [EdgeInsets] of [LoginSignupScreen].
  final EdgeInsets padding;

  /// Spacing between principal items of the screen.
  final double spacing;

  /// Size of [_Logo].
  final double logoSize;

  /// [Color] of [_Logo].
  final Color logoColor;

  /// [TextStyle] of [Text] in [_Title].
  final TextStyle titleTextStyle;

  /// [MyoroInputConfiguration] of [_Input].
  final MyoroInputConfiguration inputConfiguration;

  /// Spacing in between [_Input]s.
  final double inputSpacing;

  /// [MyoroHoverButtonConfiguration] of [_Button].
  final MyoroHoverButtonConfiguration buttonConfiguration;

  /// Spacing in between [_Button]s.
  final double buttonSpacing;

  const LoginSignupScreenThemeExtension({
    required this.padding,
    required this.spacing,
    required this.logoSize,
    required this.logoColor,
    required this.titleTextStyle,
    required this.inputConfiguration,
    required this.inputSpacing,
    required this.buttonConfiguration,
    required this.buttonSpacing,
  });

  LoginSignupScreenThemeExtension.fake()
    : padding = EdgeInsets.all(faker.randomGenerator.decimal(scale: 50)),
      spacing = faker.randomGenerator.decimal(scale: 50),
      logoSize = faker.randomGenerator.decimal(scale: 500),
      logoColor =
          kMyoroTestColors[faker.randomGenerator.integer(
            kMyoroTestColors.length,
          )],
      titleTextStyle = MyoroTypographyDesignSystem.instance.randomTextStyle,
      inputConfiguration = MyoroInputConfiguration.fake(),
      inputSpacing = faker.randomGenerator.decimal(scale: 50),
      buttonConfiguration = MyoroHoverButtonConfiguration.fake(),
      buttonSpacing = faker.randomGenerator.decimal(scale: 50);

  LoginSignupScreenThemeExtension.builder(ColorScheme colorScheme)
    : padding = const EdgeInsets.only(left: 24, right: 24, bottom: 24),
      spacing = 16,
      logoSize = 200,
      logoColor = colorScheme.onPrimary,
      titleTextStyle = MyoroTypographyDesignSystem.instance.boldLarge.copyWith(
        fontSize: 48,
      ),
      inputConfiguration = const MyoroInputConfiguration(),
      inputSpacing = 8,
      buttonConfiguration = const MyoroHoverButtonConfiguration(bordered: true),
      buttonSpacing = 16;

  @override
  LoginSignupScreenThemeExtension copyWith({
    EdgeInsets? padding,
    double? spacing,
    double? logoSize,
    Color? logoColor,
    TextStyle? titleTextStyle,
    MyoroInputConfiguration? inputConfiguration,
    double? inputSpacing,
    MyoroHoverButtonConfiguration? buttonConfiguration,
    double? buttonSpacing,
  }) {
    return LoginSignupScreenThemeExtension(
      padding: padding ?? this.padding,
      spacing: spacing ?? this.spacing,
      logoSize: logoSize ?? this.logoSize,
      logoColor: logoColor ?? this.logoColor,
      titleTextStyle: titleTextStyle ?? this.titleTextStyle,
      inputConfiguration: inputConfiguration ?? this.inputConfiguration,
      inputSpacing: inputSpacing ?? this.inputSpacing,
      buttonConfiguration: buttonConfiguration ?? this.buttonConfiguration,
      buttonSpacing: buttonSpacing ?? this.buttonSpacing,
    );
  }

  @override
  LoginSignupScreenThemeExtension lerp(
    covariant ThemeExtension<LoginSignupScreenThemeExtension>? other,
    double t,
  ) {
    if (other is! LoginSignupScreenThemeExtension) return this;
    return copyWith(
      padding: EdgeInsets.lerp(padding, other.padding, t),
      spacing: lerpDouble(spacing, other.spacing, t),
      logoSize: lerpDouble(logoSize, other.logoSize, t),
      logoColor: Color.lerp(logoColor, other.logoColor, t),
      titleTextStyle: TextStyle.lerp(titleTextStyle, other.titleTextStyle, t),
      inputConfiguration: myoroLerp(
        inputConfiguration,
        other.inputConfiguration,
        t,
      ),
      inputSpacing: lerpDouble(inputSpacing, other.inputSpacing, t),
      buttonConfiguration: MyoroHoverButtonConfiguration.lerp(
        buttonConfiguration,
        other.buttonConfiguration,
        t,
      ),
      buttonSpacing: lerpDouble(buttonSpacing, other.buttonSpacing, t),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is LoginSignupScreenThemeExtension &&
        other.runtimeType == runtimeType &&
        other.padding == padding &&
        other.spacing == spacing &&
        other.logoSize == logoSize &&
        other.logoColor == logoColor &&
        other.titleTextStyle == titleTextStyle &&
        other.inputConfiguration == inputConfiguration &&
        other.inputSpacing == inputSpacing &&
        other.buttonConfiguration == buttonConfiguration &&
        other.buttonSpacing == buttonSpacing;
  }

  @override
  int get hashCode {
    return Object.hash(
      padding,
      spacing,
      logoSize,
      logoColor,
      buttonConfiguration,
      inputConfiguration,
      inputSpacing,
      titleTextStyle,
      buttonSpacing,
    );
  }
}
