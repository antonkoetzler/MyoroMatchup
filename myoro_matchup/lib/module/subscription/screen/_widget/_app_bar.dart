part of '../subscription_screen.dart';

/// App bar of [SubscriptionScreen].
final class _AppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(context) {
    return MmAppBar(title: localization.subscriptionScreenAppBarTitle);
  }
}
