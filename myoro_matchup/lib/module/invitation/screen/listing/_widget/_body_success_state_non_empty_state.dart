part of '../widget/invitation_listing_screen.dart';

/// Non-empty state of [_BodySuccessState].
final class _BodySuccessStateNonEmptyState extends StatelessWidget {
  /// Default constructor.
  const _BodySuccessStateNonEmptyState(this._invitations);

  /// Invitations.
  final List<InvitationResponseDto> _invitations;

  @override
  Widget build(context) {
    return MyoroListScrollableBuilder(
      itemCount: _invitations.length,
      itemBuilder: (_, i) => _BodySuccessStateNonEmptyStateItem(_invitations[i]),
    );
  }
}
