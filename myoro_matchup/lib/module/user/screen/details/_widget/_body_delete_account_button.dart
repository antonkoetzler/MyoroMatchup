part of '../widget/user_details_screen.dart';

/// Delete account button of [UserDetailsScreen].
final class _BodyDeleteAccountButton extends StatelessWidget {
  /// Default constructor.
  const _BodyDeleteAccountButton();

  /// Build function.
  @override
  Widget build(context) {
    final userDetailsScreenBodyDeleteAccountButtonText = localization.userDetailsScreenBodyDeleteAccountButtonText;

    return MyoroIconTextButton(
      style: const MyoroIconTextButtonStyle().secondary(context),
      icon: Icons.delete,
      text: userDetailsScreenBodyDeleteAccountButtonText,
      onTapUp: (_, _) => _DeleteAccountConfirmationBottomSheet.show(context),
    );
  }
}
