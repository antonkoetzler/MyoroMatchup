part of '../widget/game_details_screen.dart';

/// User selection bottom sheet of [GameDetailsScreen].
final class _UserSelectionBottomSheet extends StatelessWidget {
  /// Show function.
  static void show(BuildContext context) {
    final viewModel = context.read<GameDetailsScreenViewModel>();
    MyoroModal.show(
      context,
      isBottomSheet: true,
      child: Provider.value(value: viewModel, child: const _UserSelectionBottomSheet._()),
    );
  }

  /// Internal constructor.
  const _UserSelectionBottomSheet._();

  /// Build function.
  @override
  Widget build(context) {
    final userSelectionBottomSheetTitle = localization.userSelectionBottomSheetTitle;

    final themeExtension = context.resolveThemeExtension<GameDetailsScreenThemeExtension>();
    final userSelectionBottomSheetTitleTextStyle = themeExtension.userSelectionBottomSheetTitleTextStyle;
    final userSelectionBottomSheetSpacing = themeExtension.userSelectionBottomSheetSpacing;

    final viewModel = context.read<GameDetailsScreenViewModel>();
    final getUsers = viewModel.getUsers;
    final selectUser = viewModel.selectUser;

    return Column(
      mainAxisSize: MainAxisSize.min,
      spacing: userSelectionBottomSheetSpacing,
      children: [
        Text(userSelectionBottomSheetTitle, style: userSelectionBottomSheetTitleTextStyle),
        MyoroRequestWidget<Set<UserResponseDto>>(
          request: getUsers,
          successBuilder: (_, users) {
            return MyoroListScrollable(
              itemCount: users!.length,
              itemBuilder: (_, i) {
                final user = users.elementAt(i);
                final username = user.username;
                return MyoroIconTextButton(
                  style: const MyoroIconTextButtonStyle().secondary(context),
                  text: username,
                  onTapUp: (_, _) {
                    selectUser(user);
                    _InvitationBottomSheet.show(context, user);
                  },
                );
              },
            );
          },
        ),
      ],
    );
  }
}
