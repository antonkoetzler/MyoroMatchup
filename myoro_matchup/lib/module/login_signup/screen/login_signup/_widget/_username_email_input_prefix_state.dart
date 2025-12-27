part of '../widget/login_signup_screen.dart';

/// State for [_UsernameEmailInputPrefix].
final class _UsernameEmailInputPrefixState extends State<_UsernameEmailInputPrefix>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _opacityAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(duration: const Duration(milliseconds: 300), vsync: this);
    _opacityAnimation = CurvedAnimation(parent: _controller, curve: Curves.easeIn);
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<LoginSignupScreenThemeExtension>();
    final usernameEmailInputPrefixStyle = themeExtension.usernameEmailInputPrefixStyle;

    return FadeTransition(
      opacity: _opacityAnimation,
      child: MyoroIcon(widget.icon, style: usernameEmailInputPrefixStyle),
    );
  }
}
