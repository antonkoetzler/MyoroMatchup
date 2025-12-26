part of '../widget/login_signup_screen.dart';

/// Version text of [LoginSignupScreen].
final class _VersionText extends StatelessWidget {
  /// Default constructor.
  const _VersionText();

  @override
  Widget build(context) {
    final loginSignupScreenVersionText = localization.loginSignupScreenVersionText;

    final themeExtension = context.resolveThemeExtension<LoginSignupScreenThemeExtension>();
    final versionTextStyle = themeExtension.versionTextStyle;

    final viewModel = context.read<LoginSignupScreenViewModel>();
    final state = viewModel.state;
    final versionTextController = state.versionTextController;

    return ValueListenableBuilder(
      valueListenable: versionTextController,
      builder: (_, versionText, _) {
        return versionText.isEmpty
            ? const MyoroCircularLoader()
            : Text(loginSignupScreenVersionText(versionText), style: versionTextStyle);
      },
    );
  }
}
