part of '../widget/login_signup_screen.dart';

/// OAuth button of [LoginSignupScreen].
final class _OAuthButton extends StatelessWidget {
  /// Default constructor.
  const _OAuthButton(this._provider, this._providerBeingUsedToLogin);

  /// OAuth provider.
  final OAuthProvider _provider;

  /// Provider being used to login.
  final OAuthProvider? _providerBeingUsedToLogin;

  @override
  Widget build(context) {
    final viewModel = context.read<LoginSignupScreenViewModel>();
    final oAuthButtonOnTapUp = viewModel.oAuthButtonOnTapUp;

    final providerBeingUsedToLoginIsNull = _providerBeingUsedToLogin == null;

    return _Button(
      icon: _icon,
      text: _text,
      isLoading: _provider == _providerBeingUsedToLogin,
      onTapUp: providerBeingUsedToLoginIsNull ? () => oAuthButtonOnTapUp(_provider) : null,
    );
  }

  /// Icon of [OAuthProvider].
  IconData get _icon {
    return switch (_provider) {
      OAuthProvider.google => SimpleIcons.google,
      OAuthProvider.github => SimpleIcons.github,
      _ => throw AssertionError('[_OAuthButton]: Unsupported OAuth provider: $_provider.'),
    };
  }

  /// Text of [OAuthProvider].
  String get _text {
    return switch (_provider) {
      OAuthProvider.google => localization.loginSignupScreenGoogleOAuthButtonText,
      OAuthProvider.github => localization.loginSignupScreenGitHubOAuthButtonText,
      _ => localization.loginSignupScreenGoogleOAuthButtonText,
    };
  }
}
