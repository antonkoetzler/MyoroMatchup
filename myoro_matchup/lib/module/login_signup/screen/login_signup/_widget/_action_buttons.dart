part of '../widget/login_signup_screen.dart';

/// Action button section of [LoginSignupScreen].
final class _ActionButtons extends StatelessWidget {
  const _ActionButtons(this._formType);

  final LoginSignupScreenEnum _formType;

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<LoginSignupScreenThemeExtension>();

    final viewModel = context.read<LoginSignupScreenViewModel>();
    final state = viewModel.state;
    final formController = state.formController;

    return Row(
      spacing: themeExtension.buttonsSpacing,
      children: switch (_formType) {
        LoginSignupScreenEnum.login => [
          Expanded(
            child: _ActionButton(
              text: localization.loginSignupScreenLoginForgotPasswordButton,
              onTapUp: () => _ForgotPasswordDialog.show(context),
            ),
          ),
          Expanded(
            child: _ActionButton(text: localization.loginSignupScreenLoginLoginButton, onTapUp: formController.fetch),
          ),
        ],
        LoginSignupScreenEnum.signup => [
          Expanded(
            child: _ActionButton(text: localization.loginSignupScreenSignupSignupButton, onTapUp: formController.fetch),
          ),
        ],
      },
    );
  }
}
