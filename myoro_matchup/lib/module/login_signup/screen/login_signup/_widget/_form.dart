part of '../widget/login_signup_screen.dart';

/// OAuth buttons of [LoginSignupScreen].
final class _Form extends StatelessWidget {
  /// Default constructor.
  const _Form();

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<LoginSignupScreenThemeExtension>();
    final buttonsSpacing = themeExtension.buttonsSpacing;

    final viewModel = context.read<LoginSignupScreenViewModel>();
    final state = viewModel.state;
    final providerBeingUsedToLoginController = state.providerBeingUsedToLoginController;
    final existsByUsernameOrEmailRequestController = state.existsByUsernameOrEmailRequestController;

    return ListenableBuilder(
      listenable: Listenable.merge([providerBeingUsedToLoginController, existsByUsernameOrEmailRequestController]),
      builder: (_, _) {
        final providerBeingUsedToLogin = state.providerBeingUsedToLogin;

        final existsByUsernameOrEmailRequest = state.existsByUsernameOrEmailRequest;
        final existsByUsernameOrEmailStatus = existsByUsernameOrEmailRequest.status;

        return Column(
          spacing: buttonsSpacing,
          mainAxisSize: MainAxisSize.min,
          children: [
            _OAuthButton(OAuthProvider.google, providerBeingUsedToLogin),
            _OAuthButton(OAuthProvider.github, providerBeingUsedToLogin),
            const _FormDivider(),
            _UsernameEmailInput(existsByUsernameOrEmailStatus),
            if (existsByUsernameOrEmailStatus.isSuccess) ...[
              _ManualAuthButtons(userExists: existsByUsernameOrEmailRequest.data ?? false),
            ],
          ],
        );
      },
    );
  }
}
