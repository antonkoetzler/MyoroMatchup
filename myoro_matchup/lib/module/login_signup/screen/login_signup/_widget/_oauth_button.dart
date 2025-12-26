part of '../widget/login_signup_screen.dart';

/// OAuth button of [LoginSignupScreen].
final class _OAuthButton extends StatelessWidget {
  /// Default constructor.
  const _OAuthButton(this._provider);

  /// OAuth provider.
  final OAuthProvider _provider;

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<LoginSignupScreenThemeExtension>();
    final oAuthButtonTextStyle = themeExtension.oAuthButtonTextStyle;

    final viewModel = context.read<LoginSignupScreenViewModel>();
    final oAuthButtonOnTapUp = viewModel.oAuthButtonOnTapUp;

    return MyoroIconTextButton(
      style: const MyoroIconTextButtonStyle().bordered(context).copyWith(textStyle: oAuthButtonTextStyle),
      icon: _icon,
      text: _text,
      onTapUp: (_, _) => oAuthButtonOnTapUp(_provider),
    );
  }

  /// Icon of [OAuthProvider].
  IconData get _icon {
    return switch (_provider) {
      OAuthProvider.google => SimpleIcons.google,
      OAuthProvider.apple => SimpleIcons.apple,
      OAuthProvider.github => SimpleIcons.github,
      _ => throw AssertionError('[_OAuthButton]: Unsupported OAuth provider: $_provider.'),
    };
  }

  /// Text of [OAuthProvider].
  String get _text {
    return switch (_provider) {
      OAuthProvider.google => localization.loginSignupScreenGoogleOAuthButtonText,
      OAuthProvider.apple => localization.loginSignupScreenAppleOAuthButtonText,
      OAuthProvider.github => localization.loginSignupScreenGitHubOAuthButtonText,
      _ => localization.loginSignupScreenGoogleOAuthButtonText,
    };
  }
}
