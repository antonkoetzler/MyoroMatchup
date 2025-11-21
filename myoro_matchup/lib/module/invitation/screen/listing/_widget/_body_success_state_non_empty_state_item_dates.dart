part of '../widget/invitation_listing_screen.dart';

/// Dates of [_BodySuccessStateNonEmptyStateItem].
final class _BodySuccessStateNonEmptyStateItemDates extends StatelessWidget {
  /// Default constructor.
  const _BodySuccessStateNonEmptyStateItemDates(this._invitation);

  /// Invitation.
  final InvitationResponseDto _invitation;

  @override
  Widget build(context) {
    return Text(_invitation.createdAt.toLocal().toString());
  }
}
