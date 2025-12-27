part of '../widget/login_signup_screen.dart';

/// Username input of [LoginSignupScreen].
final class _UsernameEmailInput extends StatelessWidget {
  /// Default constructor.
  const _UsernameEmailInput(this._existsByUsernameOrEmailStatus);

  /// Status of the request to fetch if a username/email with said username exists.
  final MyoroRequestEnum _existsByUsernameOrEmailStatus;

  /// Build function.
  @override
  Widget build(context) {
    final loginSignupScreenManualAuthUsernameEmailInputLabel =
        localization.loginSignupScreenManualAuthUsernameEmailInputLabel;

    final viewModel = context.read<LoginSignupScreenViewModel>();
    final state = viewModel.state;
    final usernameInputController = state.usernameInputController;
    final formKey = state.formKey;

    return Form(
      key: formKey,
      child: MyoroInput(
        label: loginSignupScreenManualAuthUsernameEmailInputLabel,
        controller: usernameInputController,
        suffix: switch (_existsByUsernameOrEmailStatus) {
          MyoroRequestEnum.idle => null,
          MyoroRequestEnum.loading => const MyoroCircularLoader(),
          MyoroRequestEnum.success => const _UsernameEmailInputPrefix(icon: Icons.check),
          MyoroRequestEnum.error => const _UsernameEmailInputPrefix(icon: Icons.error),
        },
      ),
    );
  }
}
