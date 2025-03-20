import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

TextStyle get _titleTextStyle => MyoroTypographyDesignSystem.instance.boldLarge;

const _loginSignupButtonConfiguration = MyoroHoverButtonConfiguration(
  isHovered: true,
);

/// [ThemeExtension] of [LoginScreen].
final class LoginScreenThemeExtension
    extends ThemeExtension<LoginScreenThemeExtension> {
  /// [TextStyle] of [Text] in [_Title].
  final TextStyle titleTextStyle;

  /// [MyoroHoverButtonConfiguration] of [_LoginSignupButton].
  final MyoroHoverButtonConfiguration loginSignupButtonConfiguration;

  const LoginScreenThemeExtension({
    required this.loginSignupButtonConfiguration,
    required this.titleTextStyle,
  });

  factory LoginScreenThemeExtension.fromThemeEnum(ThemeEnum themeEnum) {
    return switch (themeEnum) {
      ThemeEnum.light => LoginScreenThemeExtension(
        titleTextStyle: _titleTextStyle,
        loginSignupButtonConfiguration: _loginSignupButtonConfiguration,
      ),
      ThemeEnum.dark => LoginScreenThemeExtension(
        titleTextStyle: _titleTextStyle,
        loginSignupButtonConfiguration: _loginSignupButtonConfiguration,
      ),
    };
  }

  @override
  LoginScreenThemeExtension copyWith({
    TextStyle? titleTextStyle,
    MyoroHoverButtonConfiguration? loginSignupButtonConfiguration,
  }) {
    return LoginScreenThemeExtension(
      titleTextStyle: titleTextStyle ?? this.titleTextStyle,
      loginSignupButtonConfiguration:
          loginSignupButtonConfiguration ?? this.loginSignupButtonConfiguration,
    );
  }

  @override
  LoginScreenThemeExtension lerp(
    covariant ThemeExtension<LoginScreenThemeExtension>? other,
    double t,
  ) {
    if (other is! LoginScreenThemeExtension) return this;
    return copyWith(
      titleTextStyle: TextStyle.lerp(titleTextStyle, other.titleTextStyle, t),
      loginSignupButtonConfiguration: MyoroHoverButtonConfiguration.lerp(
        loginSignupButtonConfiguration,
        other.loginSignupButtonConfiguration,
        t,
      ),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is LoginScreenThemeExtension &&
        other.runtimeType == runtimeType &&
        other.titleTextStyle == titleTextStyle &&
        other.loginSignupButtonConfiguration == loginSignupButtonConfiguration;
  }

  @override
  int get hashCode {
    return Object.hash(loginSignupButtonConfiguration, titleTextStyle);
  }
}
