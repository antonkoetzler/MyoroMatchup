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
    required this.bodySpacing,
    required this.inputsSpacing,
  });

  LoginSignupScreenThemeExtension.fake()
    : bodyPadding = myoroFake<EdgeInsets>(),
      bodySpacing = faker.randomGenerator.decimal(scale: 20),
      inputsSpacing = faker.randomGenerator.decimal(scale: 20);

  const LoginSignupScreenThemeExtension.builder()
    : bodyPadding = const EdgeInsets.all(kEdgeInsetsLength),
      bodySpacing = kSpacing * 2,
      inputsSpacing = kSpacing;

  /// Padding of [LoginSignupScreen].
  final EdgeInsets bodyPadding;

  /// Spacing between each primary section in [LoginSignupScreen].
  final double bodySpacing;

  /// Spacing between the [MyoroInput]s.
  final double inputsSpacing;

  @override
  LoginSignupScreenThemeExtension lerp(covariant ThemeExtension<LoginSignupScreenThemeExtension>? other, double t) {
    if (other is! LoginSignupScreenThemeExtension) return this;
    return copyWith(
      bodyPadding: EdgeInsets.lerp(bodyPadding, other.bodyPadding, t),
      bodySpacing: lerpDouble(bodySpacing, other.bodySpacing, t),
      inputsSpacing: lerpDouble(inputsSpacing, other.inputsSpacing, t),
    );
  }
}
