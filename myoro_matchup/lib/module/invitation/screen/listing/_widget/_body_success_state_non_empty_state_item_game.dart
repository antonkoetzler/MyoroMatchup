part of '../widget/invitation_listing_screen.dart';

/// Game of [_BodySuccessStateNonEmptyStateItem].
final class _BodySuccessStateNonEmptyStateItemGame extends StatelessWidget {
  /// Default constructor.
  const _BodySuccessStateNonEmptyStateItemGame(this._invitation);

  /// Invitation.
  final InvitationResponseDto _invitation;

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<InvitationListingScreenThemeExtension>();
    final bodySuccessStateNonEmptyStateItemGameTextStyle =
        themeExtension.bodySuccessStateNonEmptyStateItemGameTextStyle;
    return Text(
      _invitation.game.name,
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
      style: bodySuccessStateNonEmptyStateItemGameTextStyle,
    );
  }
}
