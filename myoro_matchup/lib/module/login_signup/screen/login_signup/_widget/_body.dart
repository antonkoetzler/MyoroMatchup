part of '../login_signup_screen.dart';

/// [MyoroScreenConfiguration.body] of [LoginSignupScreen].
final class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<LoginSignupScreenThemeExtension>();
    final bodyPadding = themeExtension.bodyPadding;
    final logoInputsSpacing = themeExtension.logoInputsSpacing;
    final inputsFormTypeSwitcherButtonSpacing = themeExtension.inputsFormTypeSwitcherButtonSpacing;

    final viewModel = context.read<LoginSignupScreenViewModel>();
    final state = viewModel.state;
    final formTypeController = state.formTypeController;
    final formController = state.formController;

    return ValueListenableBuilder(
      valueListenable: formTypeController,
      builder: (_, formType, _) {
        return MyoroForm(
          controller: formController,
          builder: (request, _) {
            return Padding(
              padding: bodyPadding,
              child: Column(
                children: [
                  Expanded(
                    child: Center(
                      child: MyoroSingleChildScrollable(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const _Logo(),
                            SizedBox(height: logoInputsSpacing),
                            Flexible(child: _Inputs(formType)),
                            SizedBox(height: inputsFormTypeSwitcherButtonSpacing),
                            _FormTypeSwitcherButton(formType),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [if (request.status.isLoading) const MyoroCircularLoader() else _ActionButtons(formType)],
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
