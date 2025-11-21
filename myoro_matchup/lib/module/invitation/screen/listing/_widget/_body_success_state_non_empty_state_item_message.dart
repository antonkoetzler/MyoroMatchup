part of '../widget/invitation_listing_screen.dart';

/// Message of [_BodySuccessStateNonEmptyStateItem].
final class _BodySuccessStateNonEmptyStateItemMessage extends StatelessWidget {
  /// Default constructor.
  const _BodySuccessStateNonEmptyStateItemMessage(this._invitation);

  /// Invitation.
  final InvitationResponseDto _invitation;

  @override
  Widget build(context) {
    return Text(_invitation.message);
  }
}
