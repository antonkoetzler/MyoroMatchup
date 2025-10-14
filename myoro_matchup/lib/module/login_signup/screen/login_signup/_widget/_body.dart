part of '../login_signup_screen.dart';

/// [MyoroScreenConfiguration.body] of [LoginSignupScreen].
final class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<LoginSignupScreenThemeExtension>();
    final bodySpacing = themeExtension.bodySpacing;
    final bodyPadding = themeExtension.bodyPadding;

    final viewModel = context.read<LoginSignupScreenViewModel>();
    final state = viewModel.state;
    final formTypeNotifier = state.formTypeNotifier;
    final formController = state.formController;

    return ValueListenableBuilder(
      valueListenable: formTypeNotifier,
      builder: (_, formType, _) {
        return MyoroForm<int>(
          controller: formController,
          builder: (request, _) {
            return Padding(
              padding: bodyPadding,
              child: Column(
                spacing: bodySpacing,
                children: [
                  Expanded(
                    child: Column(
                      spacing: bodySpacing,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const _Logo(),
                        Flexible(child: _Inputs(formType)),
                      ],
                    ),
                  ),
                  Column(
                    spacing: bodySpacing,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      _FormTypeSwitcherButton(formType),
                      if (request.status.isLoading) const MyoroCircularLoader() else _Buttons(formType),
                    ],
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
