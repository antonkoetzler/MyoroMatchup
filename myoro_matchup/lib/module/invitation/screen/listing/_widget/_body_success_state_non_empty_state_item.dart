part of '../widget/invitation_listing_screen.dart';

/// Item of [_BodySuccessStateNonEmptyState].
final class _BodySuccessStateNonEmptyStateItem extends StatelessWidget {
  /// Default constructor.
  const _BodySuccessStateNonEmptyStateItem(this._invitation);

  /// Invitation.
  final InvitationResponseDto _invitation;

  /// Build function.
  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<InvitationListingScreenThemeExtension>();
    final bodySuccessStateNonEmptyStateItemSpacing = themeExtension.bodySuccessStateNonEmptyStateItemSpacing;
    final bodySuccessStateNonEmptyStateItemDeclineAcceptButtonSpacing =
        themeExtension.bodySuccessStateNonEmptyStateItemDeclineAcceptButtonSpacing;

    final message = _invitation.message;
    final messageIsNotEmpty = message.isNotEmpty;
    final status = _invitation.status;
    final isPending = status.isPending;

    return MyoroCard(
      child: Column(
        spacing: bodySuccessStateNonEmptyStateItemSpacing,
        children: [
          Row(
            children: [
              Flexible(child: _BodySuccessStateNonEmptyStateItemGame(_invitation)),
              Expanded(
                child: Column(
                  children: [
                    _BodySuccessStateNonEmptyStateItemInviter(_invitation),
                    _BodySuccessStateNonEmptyStateItemDates(_invitation),
                  ],
                ),
              ),
              _BodySuccessStateNonEmptyStateItemStatus(_invitation),
            ],
          ),
          if (messageIsNotEmpty) _BodySuccessStateNonEmptyStateItemMessage(_invitation),
          if (isPending) ...[
            Row(
              spacing: bodySuccessStateNonEmptyStateItemDeclineAcceptButtonSpacing,
              children: [
                Expanded(child: _BodySuccessStateNonEmptyStateItemDeclineButton(_invitation)),
                Expanded(child: _BodySuccessStateNonEmptyStateItemAcceptButton(_invitation)),
              ],
            ),
          ],
        ],
      ),
    );
  }
}
