part of '../widget/invitation_listing_screen.dart';

/// Status of [_BodySuccessStateNonEmptyStateItem].
final class _BodySuccessStateNonEmptyStateItemStatus extends StatelessWidget {
  /// Default constructor.
  const _BodySuccessStateNonEmptyStateItemStatus(this._invitation);

  /// Invitation.
  final InvitationResponseDto _invitation;

  @override
  Widget build(context) {
    return Text(_invitation.status.name);
  }
}
