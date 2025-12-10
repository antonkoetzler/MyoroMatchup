part of '../widget/mm_app_bar.dart';

/// Menu drawer of [MmAppBar].
final class _MenuModal extends StatelessWidget {
  /// Show function.
  static void _show(BuildContext context) {
    MyoroModal.show(context, showCloseButton: false, isBottomSheet: true, child: const _MenuModal._());
  }

  /// Internal constructor.
  const _MenuModal._();

  /// Build function.
  @override
  Widget build(context) {
    final mmAppBarMenuDrawerCreateGameText = localization.mmAppBarMenuDrawerCreateGameText;
    final mmAppBarMenuDrawerFriendListingText = localization.mmAppBarMenuDrawerFriendListingText;
    final mmAppBarMenuDrawerInvitationListingText = localization.mmAppBarMenuDrawerInvitationListingText;
    final mmAppBarMenuDrawerLogoutText = localization.mmAppBarMenuDrawerLogoutText;

    final themeExtension = context.resolveThemeExtension<MmAppBarThemeExtension>();
    final menuDrawerSpacing = themeExtension.menuDrawerSpacing;
    final menuDrawerContentPadding = themeExtension.menuDrawerContentPadding;

    return Padding(
      padding: menuDrawerContentPadding,
      child: Column(
        spacing: menuDrawerSpacing,
        mainAxisSize: MainAxisSize.min,
        children: [
          _MenuModalItem(
            Icons.add,
            mmAppBarMenuDrawerCreateGameText,
            () => MmRouter.push(MmRoutes.gameRoutes.gameCreationScreen.navigate()),
          ),
          _MenuModalItem(
            Icons.person,
            mmAppBarMenuDrawerFriendListingText,
            () => MmRouter.push(MmRoutes.friendRoutes.friendListingScreen.navigate()),
          ),
          _MenuModalItem(
            Icons.insert_invitation,
            mmAppBarMenuDrawerInvitationListingText,
            () => MmRouter.push(MmRoutes.invitationRoutes.invitationListingScreen.navigate()),
          ),
          _MenuModalItem(Icons.logout, mmAppBarMenuDrawerLogoutText, () {
            getIt<SharedPreferencesService>().removeLoggedInUser().then((_) {
              MmRouter.replace(MmRoutes.loginSignupRoutes.loginSignupScreen.navigate());
            });
          }),
        ],
      ),
    );
  }
}
