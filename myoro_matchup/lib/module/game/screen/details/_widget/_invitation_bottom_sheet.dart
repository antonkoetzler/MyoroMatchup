part of '../widget/game_details_screen.dart';

/// Invitation bottom sheet of [GameDetailsScreen].
final class _InvitationBottomSheet extends StatelessWidget {
  /// Show function.
  static void show(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<GameDetailsScreenThemeExtension>();
    final viewModel = context.read<GameDetailsScreenViewModel>();

    MyoroModal.show(
      context,
      isBottomSheet: true,
      child: MultiProvider(
        providers: [
          InheritedProvider.value(value: themeExtension),
          InheritedProvider.value(value: viewModel),
        ],
        child: const _InvitationBottomSheet._(),
      ),
    );
  }

  /// Internal constructor.
  const _InvitationBottomSheet._();

  /// Build function.
  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<GameDetailsScreenThemeExtension>();
    final invitationBottomSheetSpacing = themeExtension.invitationBottomSheetSpacing;
    final invitationBottomSheetContentPadding = themeExtension.invitationBottomSheetContentPadding;

    final viewModel = context.read<GameDetailsScreenViewModel>();
    final invitationBottomSheetRequest = viewModel.invitationBottomSheetRequest;
    final invitationBottomSheetOnSuccess = viewModel.invitationBottomSheetOnSuccess;

    return MyoroForm(
      request: invitationBottomSheetRequest,
      onSuccess: invitationBottomSheetOnSuccess,
      builder: (request, controller) {
        return Padding(
          padding: invitationBottomSheetContentPadding,
          child: Column(
            spacing: invitationBottomSheetSpacing,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const _InvitationBottomSheetTitle(),
              const _InvitationBottomSheetUserSearchInput(),
              const _InvitationBottomSheetMessageInput(),
              _InvitationBottomSheetActionButtons(request, controller),
            ],
          ),
        );
      },
    );
  }
}
