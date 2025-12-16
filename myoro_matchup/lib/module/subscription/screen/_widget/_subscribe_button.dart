part of '../subscription_screen.dart';

/// Subscribe button in [SubscriptionScreen].
final class _SubscribeButton extends StatelessWidget {
  const _SubscribeButton({required this.subscriptionService});

  final SubscriptionService subscriptionService;

  @override
  Widget build(context) {
    return StreamBuilder<SubscriptionStatusEnum>(
      stream: subscriptionService.statusStream,
      initialData: subscriptionService.currentStatus,
      builder: (context, snapshot) {
        final status = snapshot.data ?? SubscriptionStatusEnum.free;

        if (status.isPremium) {
          return MyoroIconTextButton(text: localization.subscriptionScreenAlreadySubscribed, onTapUp: null);
        }

        return MyoroIconTextButton(
          text: localization.subscriptionScreenSubscribeButton,
          onTapUp: (_, _) async {
            final success = await subscriptionService.purchaseMonthlySubscription();
            if (!success && context.mounted) {
              MmSnackBarHelper.showSnackBar(
                snackBar: MyoroSnackBar(
                  snackBarType: MyoroSnackBarTypeEnum.error,
                  message: localization.subscriptionScreenPurchaseError,
                ),
              );
            }
          },
        );
      },
    );
  }
}
