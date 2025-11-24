part of '../widget/invitation_listing_screen.dart';

/// Non-empty state of [_BodySuccessState].
final class _BodySuccessStateNonEmptyState extends StatelessWidget {
  /// Default constructor.
  const _BodySuccessStateNonEmptyState(this._invitations);

  /// Invitations.
  final List<InvitationResponseDto> _invitations;

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<InvitationListingScreenThemeExtension>();
    final bodySuccessStateNonEmptyStateItemGamePadding = themeExtension.bodySuccessStateNonEmptyStateItemGamePadding;
    final bodySuccessStateNonEmptyStateScrollableStyle = themeExtension.bodySuccessStateNonEmptyStateScrollableStyle;

    final invitationsLength = _invitations.length;

    return Padding(
      padding: bodySuccessStateNonEmptyStateItemGamePadding,
      child: Column(
        children: [
          Expanded(
            child: MyoroListScrollableBuilder(
              style: bodySuccessStateNonEmptyStateScrollableStyle,
              itemCount: invitationsLength,
              itemBuilder: (_, i) => _BodySuccessStateNonEmptyStateItem(_invitations[i]),
            ),
          ),
          const _BodySuccessStateNonEmptyStateFilters(),
        ],
      ),
    );
  }
}
