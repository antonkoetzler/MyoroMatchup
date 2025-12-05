part of '../widget/friend_listing_screen.dart';

/// Accept friend request confirmation bottom sheet of [FriendListingScreen].
final class _AcceptFriendRequestConfirmationBottomSheet {
  /// Show function.
  static void show(BuildContext context, FriendRequestResponseDto friend) {
    final friendListingScreenAcceptFriendRequestConfirmationBottomSheetTitle =
        localization.friendListingScreenAcceptFriendRequestConfirmationBottomSheetTitle;
    final friendListingScreenAcceptFriendRequestConfirmationBottomSheetMessage =
        localization.friendListingScreenAcceptFriendRequestConfirmationBottomSheetMessage;

    final viewModel = context.read<FriendListingScreenViewModel>();
    final acceptFriendRequest = viewModel.acceptFriendRequest;

    MyoroDialogModal.show<String>(
      context,
      title: friendListingScreenAcceptFriendRequestConfirmationBottomSheetTitle,
      message: friendListingScreenAcceptFriendRequestConfirmationBottomSheetMessage,
      onConfirm: () => acceptFriendRequest(friend),
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
