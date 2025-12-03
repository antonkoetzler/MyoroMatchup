part of '../widget/game_details_screen.dart';

/// Send friend request confirmation bottom sheet of [GameDetailsScreen].
final class _SendFriendRequestConfirmationBottomSheet {
  /// Show function.
  static void show(BuildContext context, GamePlayerResponseDto player) {
    final sendFriendRequestConfirmationBottomSheetTitle = localization.sendFriendRequestConfirmationBottomSheetTitle;
    final sendFriendRequestConfirmationBottomSheetMessage =
        localization.sendFriendRequestConfirmationBottomSheetMessage;

    final viewModel = context.read<GameDetailsScreenViewModel>();
    final sendFriendRequest = viewModel.sendFriendRequest;

    MyoroDialogModal.show<String>(
      context,
      title: sendFriendRequestConfirmationBottomSheetTitle,
      message: sendFriendRequestConfirmationBottomSheetMessage,
      onConfirm: () {
        return sendFriendRequest(player);
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
