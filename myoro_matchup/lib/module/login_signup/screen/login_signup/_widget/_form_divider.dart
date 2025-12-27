part of '../widget/login_signup_screen.dart';

/// Form divider of [LoginSignupScreen].
final class _FormDivider extends StatelessWidget {
  /// Default constructor.
  const _FormDivider();

  @override
  Widget build(context) {
    final loginSignupScreenFormDividerText = localization.loginSignupScreenFormDividerText;

    final themeExtension = context.resolveThemeExtension<LoginSignupScreenThemeExtension>();
    final formDividerSpacing = themeExtension.formDividerSpacing;
    final formDividerTextStyle = themeExtension.formDividerTextStyle;
    final formDividerPadding = themeExtension.formDividerPadding;

    final divider = Expanded(
      child: Padding(padding: formDividerPadding, child: const MyoroBasicDivider(Axis.horizontal)),
    );

    return Row(
      spacing: formDividerSpacing,
      children: [
        divider,
        Text(loginSignupScreenFormDividerText, style: formDividerTextStyle),
        divider,
      ],
    );
  }
}
