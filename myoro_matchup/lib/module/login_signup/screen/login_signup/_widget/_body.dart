part of '../login_signup_screen.dart';

/// [MyoroScreenConfiguration.body] of [LoginSignupScreen].
final class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<LoginSignupScreenThemeExtension>();
    final bodyPadding = themeExtension.bodyPadding;
    final logoInputsSpacing = themeExtension.logoInputsSpacing;
    final formTypeSwitcherButtonActionButtonsSpacing = themeExtension.formTypeSwitcherButtonActionButtonsSpacing;

    final viewModel = context.read<LoginSignupScreenViewModel>();
    final state = viewModel.state;
    final formTypeController = state.formTypeController;
    final formController = state.formController;

    return ValueListenableBuilder(
      valueListenable: formTypeController,
      builder: (_, formType, _) {
        return MyoroForm<int>(
          controller: formController,
          builder: (request, _) {
            return Padding(
              padding: bodyPadding,
              child: Column(
                children: [
                  Expanded(
                    child: Column(
                      spacing: logoInputsSpacing,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const _Logo(),
                        Flexible(child: _Inputs(formType)),
                      ],
                    ),
                  ),
                  Column(
                    spacing: formTypeSwitcherButtonActionButtonsSpacing,
                    mainAxisSize: MainAxisSize.min,
                    children: [_FormTypeSwitcherButton(formType), if (request.status.isLoading) const MyoroCircularLoader() else _ActionButtons(formType)],
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
