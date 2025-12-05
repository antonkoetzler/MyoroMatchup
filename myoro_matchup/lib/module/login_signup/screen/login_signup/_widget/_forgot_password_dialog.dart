part of '../widget/login_signup_screen.dart';

/// Forgot password dialog of [LoginSignupScreen].
final class _ForgotPasswordDialog extends StatelessWidget {
  /// Show function.
  static void show(BuildContext context) {
    final loginSignupScreenForgotPasswordDialogTitle = localization.loginSignupScreenForgotPasswordDialogTitle;
    final loginSignupScreenForgotPasswordDialogMessage = localization.loginSignupScreenForgotPasswordDialogMessage;

    final themeExtension = context.resolveThemeExtension<LoginSignupScreenThemeExtension>();
    final forgotPasswordDialogStyle = themeExtension.forgotPasswordDialogStyle;

    final viewModel = context.read<LoginSignupScreenViewModel>();
    final sendForgotPasswordEmail = viewModel.sendForgotPasswordEmail;
    final onSendForgotPasswordEmail = viewModel.onSendForgotPasswordEmail;
    final onErrorSendingForgotPasswordEmail = viewModel.onErrorSendingForgotPasswordEmail;

    MyoroDialogModal.show(
      context,
      style: forgotPasswordDialogStyle,
      isBottomSheet: true,
      onConfirm: sendForgotPasswordEmail,
      onSuccess: onSendForgotPasswordEmail,
      onError: onErrorSendingForgotPasswordEmail,
      title: loginSignupScreenForgotPasswordDialogTitle,
      message: loginSignupScreenForgotPasswordDialogMessage,
      builder: (_, request) => Provider.value(value: viewModel, child: _ForgotPasswordDialog._(request)),
    );
  }

  /// Internal constructor.
  const _ForgotPasswordDialog._(this._request);

  /// Request.
  final MyoroRequest<String> _request;

  /// Build function.
  @override
  Widget build(context) {
    final loginSignupScreenForgotPasswordDialogInputPlaceholder =
        localization.loginSignupScreenForgotPasswordDialogInputPlaceholder;

    final viewModel = context.read<LoginSignupScreenViewModel>();
    final forgotPasswordEmailInputValidation = viewModel.forgotPasswordEmailInputValidation;
    final state = viewModel.state;
    final forgotPasswordEmailController = state.forgotPasswordEmailController;

    final status = _request.status;
    final isLoading = status.isLoading;

    return MyoroInput(
      autofocus: true,
      controller: forgotPasswordEmailController,
      placeholder: loginSignupScreenForgotPasswordDialogInputPlaceholder,
      keyboardType: TextInputType.emailAddress,
      validation: forgotPasswordEmailInputValidation,
      enabled: !isLoading,
    );
  }
}
