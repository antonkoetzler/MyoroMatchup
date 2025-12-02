part of '../widget/user_details_screen.dart';

/// Profile visibility bottom sheet of [UserDetailsScreen].
final class _BodyProfileVisibilityBottomSheet {
  /// Show function.
  static void show(BuildContext context, VisibilityEnum visibility) {
    final userDetailsScreenBodyProfileVisibilityBottomSheetTitle =
        localization.userDetailsScreenBodyProfileVisibilityBottomSheetTitle;
    final userDetailsScreenBodyProfileVisibilityBottomSheetMessage =
        localization.userDetailsScreenBodyProfileVisibilityBottomSheetMessage;

    final viewModel = context.read<UserDetailsScreenViewModel>();
    final changeProfileVisibility = viewModel.changeProfileVisibility;

    MyoroDialogModal.show<String>(
      context,
      title: userDetailsScreenBodyProfileVisibilityBottomSheetTitle,
      message: userDetailsScreenBodyProfileVisibilityBottomSheetMessage,
      onConfirm: () {
        return changeProfileVisibility(visibility);
      },
      onSuccess: (message) {
        return MmSnackBarHelper.showSnackBar(
          snackBar: MyoroSnackBar(snackBarType: MyoroSnackBarTypeEnum.success, message: message!),
        );
      },
    );
  }
}
