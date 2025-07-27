part of '../login_signup_screen.dart';

/// Action button section of [LoginSignupScreen].
final class _Buttons extends StatelessWidget {
  const _Buttons(this._formType);

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
            child: _Button(
              text: AppRouter.localization.loginSignupScreenLoginForgotPasswordButton,
              // TODO
              onTapUp: () => throw UnimplementedError(),
            ),
          ),
          Expanded(
            child: _Button(
              text: AppRouter.localization.loginSignupScreenLoginLoginButton,
              onTapUp: formController.fetch,
            ),
          ),
        ],
        LoginSignupScreenEnum.signup => [
          Expanded(
            child: _Button(
              text: AppRouter.localization.loginSignupScreenSignupSignupButton,
              onTapUp: formController.fetch,
            ),
          ),
        ],
      },
    );
  }
}
