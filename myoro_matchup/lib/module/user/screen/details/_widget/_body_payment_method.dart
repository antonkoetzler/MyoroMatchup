part of '../widget/user_details_screen.dart';

/// Payment method of [UserDetailsScreen].
final class _BodyPaymentMethod extends StatelessWidget {
  /// Default constructor.
  const _BodyPaymentMethod(this._user);

  /// User.
  final UserResponseDto _user;

  /// Build function.
  @override
  Widget build(context) {
    return const Text('Payment Method');
  }
}
