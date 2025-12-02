part of '../widget/login_signup_screen.dart';

/// Input section of [LoginSignupScreen].
final class _Inputs extends StatelessWidget {
  const _Inputs(this._formType);

  final LoginSignupScreenEnum _formType;

  @override
  Widget build(context) {
    final loginSignupScreenLoginUsernameEmailInputLabel = localization.loginSignupScreenLoginUsernameEmailInputLabel;
    final loginSignupScreenLoginPasswordInputLabel = localization.loginSignupScreenLoginPasswordInputLabel;
    final loginSignupScreenSignupNameInputLabel = localization.loginSignupScreenSignupNameInputLabel;
    final loginSignupScreenSignupUsernameInputLabel = localization.loginSignupScreenSignupUsernameInputLabel;
    final loginSignupScreenSignupEmailInputLabel = localization.loginSignupScreenSignupEmailInputLabel;
    final loginSignupScreenSignupPasswordInputLabel = localization.loginSignupScreenSignupPasswordInputLabel;
    final loginSignupScreenSignupPasswordRepeatInputLabel =
        localization.loginSignupScreenSignupPasswordRepeatInputLabel;

    final themeExtension = context.resolveThemeExtension<LoginSignupScreenThemeExtension>();

    final viewModel = context.read<LoginSignupScreenViewModel>();
    final onSignupCountryChanged = viewModel.onSignupCountryChanged;
    final state = viewModel.state;
    final formController = state.formController;
    final formControllerFetch = formController.fetch;
    final loginState = state.loginState;
    final loginPasswordFocusNode = loginState.passwordFocusNode;
    final loginPasswordRequestFocusNode = loginPasswordFocusNode.requestFocus;
    final loginUsernameEmailFocusNode = loginState.usernameEmailFocusNode;
    final loginUsernameEmailController = loginState.usernameEmailController;
    final loginPasswordController = loginState.passwordController;
    final signupState = state.signupState;
    final signupNameFocusNode = signupState.nameFocusNode;
    final signupNameController = signupState.nameController;
    final signupUsernameFocusNode = signupState.usernameFocusNode;
    final signupUsernameController = signupState.usernameController;
    final signupEmailFocusNode = signupState.emailFocusNode;
    final signupEmailController = signupState.emailController;
    final signupPasswordFocusNode = signupState.passwordFocusNode;
    final signupPasswordController = signupState.passwordController;
    final signupPasswordRepeatFocusNode = signupState.passwordRepeatFocusNode;
    final signupPasswordRepeatController = signupState.passwordRepeatController;
    final signupEmailFocusNodeRequestFocus = signupEmailFocusNode.requestFocus;
    final signupPasswordFocusNodeRequestFocus = signupPasswordFocusNode.requestFocus;
    final signupNameFocusNodeRequestFocus = signupNameFocusNode.requestFocus;
    final signupPasswordRepeatFocusNodeRequestFocus = signupPasswordRepeatFocusNode.requestFocus;

    return Column(
      spacing: themeExtension.inputsSpacing,
      mainAxisSize: MainAxisSize.min,
      children: switch (_formType) {
        LoginSignupScreenEnum.login => [
          _Input(
            label: loginSignupScreenLoginUsernameEmailInputLabel,
            onFieldSubmitted: loginPasswordRequestFocusNode,
            focusNode: loginUsernameEmailFocusNode,
            controller: loginUsernameEmailController,
          ),
          _Input(
            label: loginSignupScreenLoginPasswordInputLabel,
            obscurify: true,
            onFieldSubmitted: formControllerFetch,
            focusNode: loginPasswordFocusNode,
            controller: loginPasswordController,
          ),
        ],
        LoginSignupScreenEnum.signup => [
          _Input(
            label: loginSignupScreenSignupNameInputLabel,
            onFieldSubmitted: signupNameFocusNodeRequestFocus,
            focusNode: signupNameFocusNode,
            controller: signupNameController,
          ),
          _Input(
            label: loginSignupScreenSignupUsernameInputLabel,
            onFieldSubmitted: signupEmailFocusNodeRequestFocus,
            focusNode: signupUsernameFocusNode,
            controller: signupUsernameController,
          ),
          _Input(
            label: loginSignupScreenSignupEmailInputLabel,
            onFieldSubmitted: signupPasswordFocusNodeRequestFocus,
            focusNode: signupEmailFocusNode,
            controller: signupEmailController,
          ),
          MyoroCountryDropdown(onChanged: onSignupCountryChanged),
          Row(
            spacing: themeExtension.inputsSpacing,
            children: [
              Expanded(
                child: _Input(
                  label: loginSignupScreenSignupPasswordInputLabel,
                  obscurify: true,
                  onFieldSubmitted: signupPasswordRepeatFocusNodeRequestFocus,
                  focusNode: signupPasswordFocusNode,
                  controller: signupPasswordController,
                ),
              ),
              Expanded(
                child: _Input(
                  label: loginSignupScreenSignupPasswordRepeatInputLabel,
                  obscurify: true,
                  onFieldSubmitted: formControllerFetch,
                  focusNode: signupPasswordRepeatFocusNode,
                  controller: signupPasswordRepeatController,
                ),
              ),
            ],
          ),
        ],
      },
    );
  }
}
