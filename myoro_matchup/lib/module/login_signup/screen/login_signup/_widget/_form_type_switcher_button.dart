part of '../login_signup_screen.dart';

/// Button to switch the [LoginSignupScreenEnum] form in [LoginSignupScreen].
final class _FormTypeSwitcherButton extends StatelessWidget {
  const _FormTypeSwitcherButton(this._formType);

  final LoginSignupScreenEnum _formType;

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<LoginSignupScreenThemeExtension>();
    final viewModel = context.read<LoginSignupScreenViewModel>();

    return MyoroIconTextButton(
      configuration: MyoroIconTextButtonConfiguration(
        textConfiguration: MyoroTextConfiguration(
          text: switch (_formType) {
            LoginSignupScreenEnum.login => AppRouter.localization.loginSignupScreenFormTypeSwitcherButtonLoginText,
            LoginSignupScreenEnum.signup => AppRouter.localization.loginSignupScreenFormTypeSwitcherButtonSignupText,
          },
          style: themeExtension.formTypeSwitcherButtonTextStyle,
        ),
        contentColorBuilder: (tapStatus) => switch (tapStatus) {
          MyoroTapStatusEnum.idle => themeExtension.formTypeSwitcherButtonIdleColor,
          MyoroTapStatusEnum.hover => themeExtension.formTypeSwitcherButtonIdleColor,
          MyoroTapStatusEnum.tap => themeExtension.formTypeSwitcherButtonTapColor,
        },
        backgroundColorBuilder: (_) => MyoroColors.transparent,
        onTapUp: (_) => viewModel.formTypeSwitcherButtonOnTapUp(),
      ),
    );
  }
}
