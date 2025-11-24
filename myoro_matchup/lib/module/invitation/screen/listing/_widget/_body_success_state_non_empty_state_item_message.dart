part of '../widget/invitation_listing_screen.dart';

/// Message of [_BodySuccessStateNonEmptyStateItem].
final class _BodySuccessStateNonEmptyStateItemMessage extends StatelessWidget {
  /// Default constructor.
  const _BodySuccessStateNonEmptyStateItemMessage(this._invitation);

  /// Invitation.
  final InvitationResponseDto _invitation;

  @override
  Widget build(context) {
    final invitationListingScreenBodySuccessStateNonEmptyStateItemMessageLabel =
        localization.invitationListingScreenBodySuccessStateNonEmptyStateItemMessageLabel;
    final message = _invitation.message;
    return SizedBox(
      width: double.infinity,
      child: MyoroField(
        direction: Axis.vertical,
        label: invitationListingScreenBodySuccessStateNonEmptyStateItemMessageLabel,
        data: message,
      ),
    );
  }
}
