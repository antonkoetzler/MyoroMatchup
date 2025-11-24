part of '../widget/invitation_listing_screen.dart';

/// Inviter of [_BodySuccessStateNonEmptyStateItem].
final class _BodySuccessStateNonEmptyStateItemInviter extends StatelessWidget {
  /// Default constructor.
  const _BodySuccessStateNonEmptyStateItemInviter(this._invitation);

  /// Invitation.
  final InvitationResponseDto _invitation;

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<InvitationListingScreenThemeExtension>();
    final bodySuccessStateNonEmptyStateItemInviterAndDatesTextStyle =
        themeExtension.bodySuccessStateNonEmptyStateItemInviterAndDatesTextStyle;
    return Text(
      _invitation.inviterName,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: bodySuccessStateNonEmptyStateItemInviterAndDatesTextStyle,
    );
  }
}
