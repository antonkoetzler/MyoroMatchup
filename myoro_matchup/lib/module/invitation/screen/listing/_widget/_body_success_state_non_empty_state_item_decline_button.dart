part of '../widget/invitation_listing_screen.dart';

/// Decline button of [_BodySuccessStateNonEmptyStateItem].
final class _BodySuccessStateNonEmptyStateItemDeclineButton extends StatelessWidget {
  /// Default constructor.
  const _BodySuccessStateNonEmptyStateItemDeclineButton(this._invitation);

  /// Invitation.
  final InvitationResponseDto _invitation;

  /// Build function.
  @override
  Widget build(context) {
    final invitationListingScreenBodySuccessStateNonEmptyStateItemDeclineButtonText =
        localization.invitationListingScreenBodySuccessStateNonEmptyStateItemDeclineButtonText;

    final themeExtension = context.resolveThemeExtension<InvitationListingScreenThemeExtension>();
    final bodySuccessStateNonEmptyStateItemDeclineButtonStyle =
        themeExtension.bodySuccessStateNonEmptyStateItemDeclineButtonStyle;

    final viewModel = context.read<InvitationListingScreenViewModel>();
    final onDecline = viewModel.onDecline;

    return MyoroIconTextButton(
      style: bodySuccessStateNonEmptyStateItemDeclineButtonStyle,
      text: invitationListingScreenBodySuccessStateNonEmptyStateItemDeclineButtonText,
      onTapUp: (_, _) => onDecline(_invitation),
    );
  }
}
