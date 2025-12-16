part of '../subscription_screen.dart';

/// Restore purchases button in [SubscriptionScreen].
final class _RestoreButton extends StatelessWidget {
  const _RestoreButton();

  @override
  Widget build(context) {
    final subscriptionService = getIt<SubscriptionService>();

    return Center(
      child: TextButton(
        onPressed: () async {
          await subscriptionService.restorePurchases();
          if (context.mounted) {
            MmSnackBarHelper.showSnackBar(
              snackBar: MyoroSnackBar(message: localization.subscriptionScreenRestoreSuccess),
            );
          }
        },
        child: Text(localization.subscriptionScreenRestoreButton),
      ),
    );
  }
}
