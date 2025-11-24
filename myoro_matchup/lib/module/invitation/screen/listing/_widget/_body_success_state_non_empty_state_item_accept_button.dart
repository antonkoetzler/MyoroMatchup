part of '../widget/invitation_listing_screen.dart';

/// Accept button of [_BodySuccessStateNonEmptyStateItem].
final class _BodySuccessStateNonEmptyStateItemAcceptButton extends StatelessWidget {
  /// Default constructor.
  const _BodySuccessStateNonEmptyStateItemAcceptButton(this._invitation);

  /// Invitation.
  final InvitationResponseDto _invitation;

  /// Build function.
  @override
  Widget build(context) {
    final invitationListingScreenBodySuccessStateNonEmptyStateItemAcceptButtonText =
        localization.invitationListingScreenBodySuccessStateNonEmptyStateItemAcceptButtonText;

    final themeExtension = context.resolveThemeExtension<InvitationListingScreenThemeExtension>();
    final bodySuccessStateNonEmptyStateItemAcceptButtonStyle =
        themeExtension.bodySuccessStateNonEmptyStateItemAcceptButtonStyle;

    final viewModel = context.read<InvitationListingScreenViewModel>();
    final onAccept = viewModel.onAccept;

    return MyoroIconTextButton(
      style: bodySuccessStateNonEmptyStateItemAcceptButtonStyle,
      text: invitationListingScreenBodySuccessStateNonEmptyStateItemAcceptButtonText,
      onTapUp: (_, _) => onAccept(_invitation),
    );
  }
}
