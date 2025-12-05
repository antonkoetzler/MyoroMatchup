part of '../widget/user_details_screen.dart';

/// Block user confirmation bottom sheet of [UserDetailsScreen].
final class _UnblockUserConfirmationBottomSheet {
  /// Show function.
  static void show(BuildContext context, UserResponseDto user) {
    final unblockUserConfirmationBottomSheetTitle = localization.unblockUserConfirmationBottomSheetTitle;
    final unblockUserConfirmationBottomSheetMessage = localization.unblockUserConfirmationBottomSheetMessage;

    final viewModel = context.read<UserDetailsScreenViewModel>();
    final unblockUser = viewModel.unblockUser;

    MyoroDialogModal.show<String>(
      context,
      title: unblockUserConfirmationBottomSheetTitle,
      message: unblockUserConfirmationBottomSheetMessage,
      onConfirm: () {
        return unblockUser(user);
      },
      onSuccess: (message) {
        MmSnackBarHelper.showSnackBar(
          snackBar: MyoroSnackBar(snackBarType: MyoroSnackBarTypeEnum.success, message: message!),
        );
        MmRouter.pop();
      },
      onError: (error) {
        MmSnackBarHelper.showSnackBar(
          snackBar: MyoroSnackBar(snackBarType: MyoroSnackBarTypeEnum.error, message: error),
        );
      },
    );
  }
}
