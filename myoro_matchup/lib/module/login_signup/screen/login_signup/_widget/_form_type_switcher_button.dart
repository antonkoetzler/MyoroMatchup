part of '../login_signup_screen.dart';

/// Button to switch the [LoginSignupScreenEnum] form in [LoginSignupScreen].
final class _FormTypeSwitcherButton extends StatelessWidget {
  const _FormTypeSwitcherButton(this._formType);

  final LoginSignupScreenEnum _formType;

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<LoginSignupScreenThemeExtension>();
    final viewModel = context.read<LoginSignupScreenViewModel>();

    // TODO: Could be a [Widget] like MyoroLinkButton.
    return MyoroIconTextButton(
      style: MyoroIconTextButtonStyle(
        contentIdleColor: themeExtension.formTypeSwitcherButtonIdleColor,
        contentHoverColor: themeExtension.formTypeSwitcherButtonIdleColor,
        contentTapColor: themeExtension.formTypeSwitcherButtonTapColor,
      ).singleBackgroundColor(MyoroColors.transparent),
      text: switch (_formType) {
        LoginSignupScreenEnum.login => localization.loginSignupScreenFormTypeSwitcherButtonLoginText,
        LoginSignupScreenEnum.signup => localization.loginSignupScreenFormTypeSwitcherButtonSignupText,
      },

      textConfiguration: MyoroTextConfiguration(style: themeExtension.formTypeSwitcherButtonTextStyle),
      onTapUp: (_, _) => viewModel.formTypeSwitcherButtonOnTapUp(),
    );
  }
}
