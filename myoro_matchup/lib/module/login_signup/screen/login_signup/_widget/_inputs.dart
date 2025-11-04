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
            controller: loginState.usernameEmailController,
          ),
          _Input(
            placeholder: localization.loginSignupScreenLoginPasswordInputPlaceholder,
            obscurify: true,
            controller: loginState.passwordController,
          ),
        ],
        LoginSignupScreenEnum.signup => [
          _Input(
            placeholder: localization.loginSignupScreenSignupNameInputPlaceholder,
            controller: signupState.nameController,
          ),
          _Input(
            placeholder: localization.loginSignupScreenSignupUsernameInputPlaceholder,
            controller: signupState.usernameController,
          ),
          _Input(
            placeholder: localization.loginSignupScreenSignupEmailInputPlaceholder,
            controller: signupState.emailController,
          ),
          Row(
            spacing: themeExtension.inputsSpacing,
            children: [
              Expanded(
                child: _Input(
                  placeholder: localization.loginSignupScreenSignupPasswordInputPlaceholder,
                  obscurify: true,
                  controller: signupState.passwordController,
                ),
              ),
              Expanded(
                child: _Input(
                  placeholder: localization.loginSignupScreenSignupPasswordRepeatInputPlaceholder,
                  obscurify: true,
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
