part of '../widget/invitation_listing_screen.dart';

/// Item of [_BodySuccessStateNonEmptyState].
final class _BodySuccessStateNonEmptyStateItem extends StatelessWidget {
  /// Default constructor.
  const _BodySuccessStateNonEmptyStateItem(this._invitation);

  /// Invitation.
  final InvitationResponseDto _invitation;

  @override
  Widget build(context) {
    return MyoroButton(
      // TODO
      onTapUp: (_, _) => throw UnimplementedError(),
      builder: (_, _) {
        return Column(
          children: [
            Row(
              children: [
                _BodySuccessStateNonEmptyStateItemGame(_invitation),
                _BodySuccessStateNonEmptyStateItemInviter(_invitation),
                _BodySuccessStateNonEmptyStateItemStatus(_invitation),
                _BodySuccessStateNonEmptyStateItemDates(_invitation),
              ],
            ),
            _BodySuccessStateNonEmptyStateItemMessage(_invitation),
          ],
        );
      },
    );
  }
}
