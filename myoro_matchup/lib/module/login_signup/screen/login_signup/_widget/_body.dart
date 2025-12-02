part of '../widget/login_signup_screen.dart';

/// [MyoroScreen.body] of [LoginSignupScreen].
final class _Body extends StatelessWidget {
  /// Default constructor.
  const _Body(this._formType);

  /// Form type.
  final LoginSignupScreenEnum _formType;

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<LoginSignupScreenThemeExtension>();
    final bodyPadding = themeExtension.bodyPadding;
    final logoInputsSpacing = themeExtension.logoInputsSpacing;
    final inputsFormTypeSwitcherButtonSpacing = themeExtension.inputsFormTypeSwitcherButtonSpacing;

    return Padding(
      padding: bodyPadding,
      child: Center(
        child: MyoroSingleChildScrollable(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const _Logo(),
              SizedBox(height: logoInputsSpacing),
              Flexible(child: _Inputs(_formType)),
              SizedBox(height: inputsFormTypeSwitcherButtonSpacing),
            ],
          ),
        ),
      ),
    );
  }
}
