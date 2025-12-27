part of '../widget/login_signup_screen.dart';

/// Manual auth buttons content of [LoginSignupScreen].
final class _ManualAuthButtonsContent extends StatelessWidget {
  /// Default constructor.
  const _ManualAuthButtonsContent(this._userExists);

  /// Whether the user exists.
  final bool _userExists;

  @override
  Widget build(context) {
    final manualAuthButtonsLoginText = localization.loginSignupScreenManualAuthButtonsLoginText;
    final manualAuthButtonsForgotPasswordText = localization.loginSignupScreenManualAuthButtonsForgotPasswordText;
    final manualAuthButtonsSignupText = localization.loginSignupScreenManualAuthButtonsSignupText;

    final themeExtension = context.resolveThemeExtension<LoginSignupScreenThemeExtension>();
    final manualAuthButtonsSpacing = themeExtension.manualAuthButtonsSpacing;

    return _userExists
        ? Row(
            spacing: manualAuthButtonsSpacing,
            children: [
              Expanded(child: _Button(text: manualAuthButtonsLoginText)),
              Expanded(child: _Button(text: manualAuthButtonsForgotPasswordText)),
            ],
          )
        : _Button(text: manualAuthButtonsSignupText);
  }
}
