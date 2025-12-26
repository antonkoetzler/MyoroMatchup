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
  /// Default constructor.
  const LoginSignupScreenThemeExtension({
    required this.bodyPadding,
    required this.logoButtonsSpacing,
    required this.buttonsSpacing,
    required this.buttonsVersionSpacing,
    required this.oAuthButtonTextStyle,
    required this.versionTextStyle,
    required this.logoSize,
  });

  /// Fake constructor.
  LoginSignupScreenThemeExtension.fake()
    : bodyPadding = myoroFake<EdgeInsets>(),
      logoButtonsSpacing = faker.randomGenerator.decimal(scale: 20),
      buttonsSpacing = faker.randomGenerator.decimal(scale: 20),
      buttonsVersionSpacing = faker.randomGenerator.decimal(scale: 20),
      oAuthButtonTextStyle = myoroFake<MyoroTextStyle>(),
      versionTextStyle = myoroFake<TextStyle>(),
      logoSize = faker.randomGenerator.decimal(scale: 20);

  /// Builder constructor.
  LoginSignupScreenThemeExtension.builder(TextTheme textTheme)
    : bodyPadding = const EdgeInsets.all(kEdgeInsetsLength),
      logoButtonsSpacing = kMyoroMultiplier * 6,
      buttonsSpacing = kMyoroMultiplier * 2,
      buttonsVersionSpacing = kMyoroMultiplier * 4,
      oAuthButtonTextStyle = MyoroTextStyle(alignment: TextAlign.left, style: textTheme.bodyMedium!),
      versionTextStyle = textTheme.bodySmall!,
      logoSize = 200;

  /// Padding of [LoginSignupScreen].
  final EdgeInsets bodyPadding;

  /// Spacing between logo and buttons.
  final double logoButtonsSpacing;

  /// Spacing between buttons.
  final double buttonsSpacing;

  /// Spacing between buttons and version text.
  final double buttonsVersionSpacing;

  /// [MyoroTextStyle] of OAuth buttons.
  final MyoroTextStyle oAuthButtonTextStyle;

  /// [TextStyle] of version text.
  final TextStyle versionTextStyle;

  /// Size of the logo.
  final double logoSize;

  /// Lerp function.
  @override
  LoginSignupScreenThemeExtension lerp(covariant ThemeExtension<LoginSignupScreenThemeExtension>? other, double t) {
    if (other is! LoginSignupScreenThemeExtension) return this;
    return copyWith(
      bodyPadding: EdgeInsets.lerp(bodyPadding, other.bodyPadding, t),
      logoButtonsSpacing: lerpDouble(logoButtonsSpacing, other.logoButtonsSpacing, t),
      buttonsSpacing: lerpDouble(buttonsSpacing, other.buttonsSpacing, t),
      buttonsVersionSpacing: lerpDouble(buttonsVersionSpacing, other.buttonsVersionSpacing, t),
      oAuthButtonTextStyle: MyoroTextStyle.lerp(oAuthButtonTextStyle, other.oAuthButtonTextStyle, t),
      versionTextStyle: TextStyle.lerp(versionTextStyle, other.versionTextStyle, t),
      logoSize: lerpDouble(logoSize, other.logoSize, t),
    );
  }
}
