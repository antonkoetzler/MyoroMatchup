part of '../widget/user_details_screen.dart';

/// Delete account button of [UserDetailsScreen].
final class _BodyDeleteAccountButton extends StatelessWidget {
  /// Default constructor.
  const _BodyDeleteAccountButton();

  /// Build function.
  @override
  Widget build(context) {
    return MyoroIconTextButton(
      icon: Icons.delete,
      onTapUp: (_, _) => _DeleteAccountConfirmationBottomSheet.show(context),
    );
  }
}
