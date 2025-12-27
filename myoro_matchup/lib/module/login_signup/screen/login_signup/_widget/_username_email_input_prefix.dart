part of '../widget/login_signup_screen.dart';

/// Icon prefix for username/email input with fade-in animation.
final class _UsernameEmailInputPrefix extends StatefulWidget {
  /// Default constructor.
  const _UsernameEmailInputPrefix({required this.icon});

  /// The icon to display.
  final IconData icon;

  @override
  State<_UsernameEmailInputPrefix> createState() => _UsernameEmailInputPrefixState();
}
