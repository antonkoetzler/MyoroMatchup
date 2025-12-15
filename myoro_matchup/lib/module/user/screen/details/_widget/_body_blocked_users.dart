part of '../widget/user_details_screen.dart';

/// Blocked users of [UserDetailsScreen].
final class _BodyBlockedUsers extends StatelessWidget {
  /// Default constructor.
  const _BodyBlockedUsers();

  /// Build function.
  @override
  Widget build(context) {
    final userDetailsScreenBodyBlockedUsersTitle = localization.userDetailsScreenBodyBlockedUsersTitle;

    final viewModel = context.read<UserDetailsScreenViewModel>();
    final fetchBlockedUsers = viewModel.fetchBlockedUsers;

    return _BodyCard(
      userDetailsScreenBodyBlockedUsersTitle,
      MyoroRequestWidget(
        request: fetchBlockedUsers,
        successBuilder: (_, blockedUsers) {
          return MyoroListScrollable(
            itemCount: blockedUsers!.length,
            itemBuilder: (_, i) {
              final blockedUser = blockedUsers[i];

              return MyoroIconTextButton(
                style: const MyoroIconTextButtonStyle().secondary(context),
                text: blockedUser.username,
                onTapUp: (_, _) {
                  _UnblockUserConfirmationBottomSheet.show(context, blockedUser);
                },
              );
            },
          );
        },
      ),
    );
  }
}
