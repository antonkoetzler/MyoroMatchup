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
            onFieldSubmitted: loginState.passwordFocusNode.requestFocus,
            focusNode: loginState.usernameEmailFocusNode,
            controller: loginState.usernameEmailController,
          ),
          _Input(
            placeholder: localization.loginSignupScreenLoginPasswordInputPlaceholder,
            obscurify: true,
            onFieldSubmitted: state.formController.fetch,
            focusNode: loginState.passwordFocusNode,
            controller: loginState.passwordController,
          ),
        ],
        LoginSignupScreenEnum.signup => [
          _Input(
            placeholder: localization.loginSignupScreenSignupNameInputPlaceholder,
            onFieldSubmitted: signupState.usernameFocusNode.requestFocus,
            focusNode: signupState.nameFocusNode,
            controller: signupState.nameController,
          ),
          _Input(
            placeholder: localization.loginSignupScreenSignupUsernameInputPlaceholder,
            onFieldSubmitted: signupState.emailFocusNode.requestFocus,
            focusNode: signupState.usernameFocusNode,
            controller: signupState.usernameController,
          ),
          _Input(
            placeholder: localization.loginSignupScreenSignupEmailInputPlaceholder,
            onFieldSubmitted: signupState.passwordFocusNode.requestFocus,
            focusNode: signupState.emailFocusNode,
            controller: signupState.emailController,
          ),
          Row(
            spacing: themeExtension.inputsSpacing,
            children: [
              Expanded(
                child: _Input(
                  placeholder: localization.loginSignupScreenSignupPasswordInputPlaceholder,
                  obscurify: true,
                  onFieldSubmitted: signupState.passwordRepeatFocusNode.requestFocus,
                  focusNode: signupState.passwordFocusNode,
                  controller: signupState.passwordController,
                ),
              ),
              Expanded(
                child: _Input(
                  placeholder: localization.loginSignupScreenSignupPasswordRepeatInputPlaceholder,
                  obscurify: true,
                  onFieldSubmitted: state.formController.fetch,
                  focusNode: signupState.passwordRepeatFocusNode,
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
