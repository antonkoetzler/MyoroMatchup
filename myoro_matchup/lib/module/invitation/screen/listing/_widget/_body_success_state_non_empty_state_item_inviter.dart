part of '../widget/invitation_listing_screen.dart';

/// Inviter of [_BodySuccessStateNonEmptyStateItem].
final class _BodySuccessStateNonEmptyStateItemInviter extends StatelessWidget {
  /// Default constructor.
  const _BodySuccessStateNonEmptyStateItemInviter(this._invitation);

  /// Invitation.
  final InvitationResponseDto _invitation;

  @override
  Widget build(context) {
    return Text(_invitation.inviterName);
  }
}
