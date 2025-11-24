part of '../widget/invitation_listing_screen.dart';

/// Dates of [_BodySuccessStateNonEmptyStateItem].
final class _BodySuccessStateNonEmptyStateItemDates extends StatelessWidget {
  /// Default constructor.
  const _BodySuccessStateNonEmptyStateItemDates(this._invitation);

  /// Invitation.
  final InvitationResponseDto _invitation;

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<InvitationListingScreenThemeExtension>();
    final bodySuccessStateNonEmptyStateItemInviterAndDatesTextStyle =
        themeExtension.bodySuccessStateNonEmptyStateItemInviterAndDatesTextStyle;
    return Text(
      DateFormat('dd/MM/yyyy').format(_invitation.createdAt.toLocal()),
      textAlign: TextAlign.center,
      style: bodySuccessStateNonEmptyStateItemInviterAndDatesTextStyle,
    );
  }
}
