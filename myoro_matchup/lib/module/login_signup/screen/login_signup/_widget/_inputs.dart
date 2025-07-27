part of '../login_signup_screen.dart';

/// Input section of [LoginSignupScreen].
final class _Inputs extends StatelessWidget {
  const _Inputs(this._formType);

  final LoginSignupScreenEnum _formType;

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<LoginSignupScreenThemeExtension>();

    final viewModel = context.read<LoginSignupScreenViewModel>();
    final state = viewModel.state;
    final loginState = state.loginState;
    final signupState = state.signupState;

    return Column(
      spacing: themeExtension.inputsSpacing,
      mainAxisSize: MainAxisSize.min,
      children: switch (_formType) {
        LoginSignupScreenEnum.login => [
          _Input(
            placeholder: localization.loginSignupScreenLoginUsernameEmailInputPlaceholder,
            validation: viewModel.loginFormUsernameEmailValidation,
            controller: loginState.usernameEmailController,
          ),
          _Input(
            placeholder: localization.loginSignupScreenLoginPasswordInputPlaceholder,
            validation: viewModel.loginFormPasswordValidation,
            controller: loginState.passwordController,
          ),
        ],
        LoginSignupScreenEnum.signup => [
          _Input(
            placeholder: localization.loginSignupScreenSignupNameInputPlaceholder,
            validation: viewModel.signupFormNameValidation,
            controller: signupState.nameController,
          ),
          _Input(
            placeholder: localization.loginSignupScreenSignupUsernameInputPlaceholder,
            validation: viewModel.signupFormUsernameValidation,
            controller: signupState.usernameController,
          ),
          _Input(
            placeholder: localization.loginSignupScreenSignupEmailInputPlaceholder,
            validation: viewModel.signupFormEmailValidation,
            controller: signupState.emailController,
          ),
          Row(
            spacing: themeExtension.inputsSpacing,
            children: [
              Expanded(
                child: _Input(
                  placeholder: localization.loginSignupScreenSignupPasswordInputPlaceholder,
                  validation: viewModel.signupFormPasswordValidation,
                  controller: signupState.passwordController,
                ),
              ),
              Expanded(
                child: _Input(
                  placeholder: localization.loginSignupScreenSignupPasswordRepeatInputPlaceholder,
                  validation: viewModel.signupFormPasswordValidation,
                  controller: signupState.passwordRepeatController,
                ),
              ),
            ],
          ),
        ],
      },
    );
  }
}
