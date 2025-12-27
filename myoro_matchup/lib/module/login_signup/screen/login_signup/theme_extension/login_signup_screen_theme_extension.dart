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
    required this.buttonTextStyle,
    required this.versionTextStyle,
    required this.logoSize,
    required this.formDividerTextStyle,
    required this.formDividerSpacing,
    required this.formDividerPadding,
    required this.manualAuthButtonsSpacing,
    required this.usernameEmailInputPrefixStyle,
  });

  /// Fake constructor.
  LoginSignupScreenThemeExtension.fake()
    : bodyPadding = myoroFake<EdgeInsets>(),
      logoButtonsSpacing = faker.randomGenerator.decimal(scale: 20),
      buttonsSpacing = faker.randomGenerator.decimal(scale: 20),
      buttonsVersionSpacing = faker.randomGenerator.decimal(scale: 20),
      buttonTextStyle = myoroFake<MyoroTextStyle>(),
      versionTextStyle = myoroFake<TextStyle>(),
      logoSize = faker.randomGenerator.decimal(scale: 20),
      formDividerTextStyle = myoroFake<TextStyle>(),
      formDividerSpacing = faker.randomGenerator.decimal(scale: 20),
      formDividerPadding = myoroFake<EdgeInsets>(),
      manualAuthButtonsSpacing = faker.randomGenerator.decimal(scale: 20),
      usernameEmailInputPrefixStyle = myoroFake<MyoroIconStyle>();

  /// Builder constructor.
  LoginSignupScreenThemeExtension.builder(TextTheme textTheme)
    : bodyPadding = const EdgeInsets.all(kEdgeInsetsLength),
      logoButtonsSpacing = kMyoroMultiplier * 6,
      buttonsSpacing = kMyoroMultiplier * 2,
      buttonsVersionSpacing = kMyoroMultiplier * 4,
      buttonTextStyle = MyoroTextStyle(alignment: TextAlign.left, style: textTheme.bodyMedium!),
      versionTextStyle = textTheme.bodySmall!,
      logoSize = 200,
      formDividerTextStyle = textTheme.bodySmall!,
      formDividerSpacing = kMyoroMultiplier * 2,
      formDividerPadding = const EdgeInsets.symmetric(horizontal: kMyoroMultiplier),
      manualAuthButtonsSpacing = kMyoroMultiplier * 2,
      usernameEmailInputPrefixStyle = const MyoroIconStyle(size: kMyoroMultiplier * 3);

  /// Padding of [LoginSignupScreen].
  final EdgeInsets bodyPadding;

  /// Spacing between logo and buttons.
  final double logoButtonsSpacing;

  /// Spacing between buttons.
  final double buttonsSpacing;

  /// Spacing between buttons and version text.
  final double buttonsVersionSpacing;

  /// [MyoroTextStyle] of OAuth buttons.
  final MyoroTextStyle buttonTextStyle;

  /// [TextStyle] of version text.
  final TextStyle versionTextStyle;

  /// Size of the logo.
  final double logoSize;

  /// [TextStyle] of form divider.
  final TextStyle formDividerTextStyle;

  /// Spacing between form divider.
  final double formDividerSpacing;

  /// [EdgeInsets] of the form divider.
  final EdgeInsets formDividerPadding;

  /// Spacing between manual auth buttons.
  final double manualAuthButtonsSpacing;

  /// [MyoroIconStyle] of username/email input prefix.
  final MyoroIconStyle usernameEmailInputPrefixStyle;

  /// Lerp function.
  @override
  LoginSignupScreenThemeExtension lerp(covariant ThemeExtension<LoginSignupScreenThemeExtension>? other, double t) {
    if (other is! LoginSignupScreenThemeExtension) return this;
    return copyWith(
      bodyPadding: EdgeInsets.lerp(bodyPadding, other.bodyPadding, t),
      logoButtonsSpacing: lerpDouble(logoButtonsSpacing, other.logoButtonsSpacing, t),
      buttonsSpacing: lerpDouble(buttonsSpacing, other.buttonsSpacing, t),
      buttonsVersionSpacing: lerpDouble(buttonsVersionSpacing, other.buttonsVersionSpacing, t),
      buttonTextStyle: MyoroTextStyle.lerp(buttonTextStyle, other.buttonTextStyle, t),
      versionTextStyle: TextStyle.lerp(versionTextStyle, other.versionTextStyle, t),
      logoSize: lerpDouble(logoSize, other.logoSize, t),
      formDividerTextStyle: TextStyle.lerp(formDividerTextStyle, other.formDividerTextStyle, t),
      formDividerSpacing: lerpDouble(formDividerSpacing, other.formDividerSpacing, t),
      formDividerPadding: EdgeInsets.lerp(formDividerPadding, other.formDividerPadding, t),
      manualAuthButtonsSpacing: lerpDouble(manualAuthButtonsSpacing, other.manualAuthButtonsSpacing, t),
      usernameEmailInputPrefixStyle: MyoroIconStyle.lerp(
        usernameEmailInputPrefixStyle,
        other.usernameEmailInputPrefixStyle,
        t,
      ),
    );
  }
}
