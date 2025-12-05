part of '../widget/user_details_screen.dart';

/// Delete account confirmation bottom sheet of [UserDetailsScreen].
final class _DeleteAccountConfirmationBottomSheet {
  /// Show function.
  static void show(BuildContext context) {
    final userDetailsScreenDeleteAccountConfirmationBottomSheetTitle =
        localization.userDetailsScreenDeleteAccountConfirmationBottomSheetTitle;
    final userDetailsScreenDeleteAccountConfirmationBottomSheetMessage =
        localization.userDetailsScreenDeleteAccountConfirmationBottomSheetMessage;

    final viewModel = context.read<UserDetailsScreenViewModel>();
    final deleteAccount = viewModel.deleteAccount;

    MyoroDialogModal.show<String>(
      context,
      title: userDetailsScreenDeleteAccountConfirmationBottomSheetTitle,
      message: userDetailsScreenDeleteAccountConfirmationBottomSheetMessage,
      onConfirm: deleteAccount,
      onSuccess: (message) {
        MmSnackBarHelper.showSnackBar(
          snackBar: MyoroSnackBar(snackBarType: MyoroSnackBarTypeEnum.success, message: message!),
        );
        MmRouter.pop();
        MmRouter.replace(Routes.loginSignupRoutes.loginSignupScreen.navigate());
      },
      onError: (error) {
        MmSnackBarHelper.showSnackBar(
          snackBar: MyoroSnackBar(snackBarType: MyoroSnackBarTypeEnum.error, message: error),
        );
      },
    );
  }
}
