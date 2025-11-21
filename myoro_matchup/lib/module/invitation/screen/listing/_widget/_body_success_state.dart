part of '../widget/invitation_listing_screen.dart';

/// Success state of [_Body].
final class _BodySuccessState extends StatelessWidget {
  /// Default constructor.
  const _BodySuccessState(this._invitations);

  /// Invitations.
  final List<InvitationResponseDto> _invitations;

  @override
  Widget build(context) {
    return _invitations.isEmpty ? const _BodySuccessStateEmptyState() : _BodySuccessStateNonEmptyState(_invitations);
  }
}
