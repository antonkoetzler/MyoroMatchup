part of '../widget/login_signup_screen.dart';

/// Manual auth buttons of [LoginSignupScreen] with slide-down animation.
final class _ManualAuthButtons extends StatefulWidget {
  /// Default constructor.
  const _ManualAuthButtons({required this.userExists});

  /// Whether the user exists.
  final bool userExists;

  @override
  State<_ManualAuthButtons> createState() => _ManualAuthButtonsState();
}

final class _ManualAuthButtonsState extends State<_ManualAuthButtons> with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<Offset> _offsetAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(duration: const Duration(milliseconds: 300), vsync: this);
    _offsetAnimation = Tween<Offset>(
      begin: const Offset(0.0, -1.0),
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(position: _offsetAnimation, child: _ManualAuthButtonsContent(widget.userExists));
  }
}
