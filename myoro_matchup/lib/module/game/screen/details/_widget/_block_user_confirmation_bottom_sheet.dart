part of '../widget/game_details_screen.dart';

/// Block user confirmation bottom sheet of [GameDetailsScreen].
final class _BlockUserConfirmationBottomSheet {
  /// Show function.
  static void show(BuildContext context, GamePlayerResponseDto player) {
    final blockUserConfirmationBottomSheetTitle = localization.blockUserConfirmationBottomSheetTitle;
    final blockUserConfirmationBottomSheetMessage = localization.blockUserConfirmationBottomSheetMessage;

    final viewModel = context.read<GameDetailsScreenViewModel>();
    final blockUser = viewModel.blockUser;

    MyoroDialogModal.show<String>(
      context,
      title: blockUserConfirmationBottomSheetTitle,
      message: blockUserConfirmationBottomSheetMessage,
      onConfirm: () {
        return blockUser(player);
      },
      onSuccess: (message) {
        MmSnackBarHelper.showSnackBar(
          snackBar: MyoroSnackBar(snackBarType: MyoroSnackBarTypeEnum.success, message: message!),
        );
        AppRouter.pop();
      },
      onError: (error) {
        MmSnackBarHelper.showSnackBar(
          snackBar: MyoroSnackBar(snackBarType: MyoroSnackBarTypeEnum.error, message: error),
        );
      },
    );
  }
}
