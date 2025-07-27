part of '../login_signup_screen.dart';

/// Action button section of [LoginSignupScreen].
final class _Buttons extends StatelessWidget {
  const _Buttons(this._formType);

  final LoginSignupScreenEnum _formType;

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<LoginSignupScreenThemeExtension>();

    return Row(
      spacing: themeExtension.buttonsSpacing,
      children: switch (_formType) {
        LoginSignupScreenEnum.login => [
          Expanded(
            child: _Button(
              text: localization.loginSignupScreenLoginForgotPasswordButton,
              // TODO
              onTapUp: () => throw UnimplementedError(),
            ),
          ),
          Expanded(
            child: _Button(
              text: localization.loginSignupScreenLoginLoginButton,
              // TODO
              onTapUp: () => throw UnimplementedError(),
            ),
          ),
        ],
        LoginSignupScreenEnum.signup => [
          Expanded(
            child: _Button(
              text: localization.loginSignupScreenSignupSignupButton,
              // TODO
              onTapUp: () => throw UnimplementedError(),
            ),
          ),
        ],
      },
    );
  }
}
