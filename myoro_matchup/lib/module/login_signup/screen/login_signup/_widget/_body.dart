part of '../login_signup_screen.dart';

/// [MyoroScreenConfiguration.body] of [LoginSignupScreen].
final class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<LoginSignupScreenThemeExtension>();

    final viewModel = context.read<LoginSignupScreenViewModel>();
    final state = viewModel.state;
    final formTypeNotifier = state.formTypeNotifier;
    final formController = state.formController;

    return LayoutBuilder(
      builder: (_, constraints) {
        return SingleChildScrollView(
          child: Container(
            constraints: BoxConstraints(minHeight: constraints.maxHeight),
            padding: themeExtension.bodyPadding,
            child: ValueListenableBuilder(
              valueListenable: formTypeNotifier,
              builder: (_, formType, _) {
                return MyoroForm<int>(
                  controller: formController,
                  builder: (_, _) {
                    return Column(
                      spacing: themeExtension.bodySpacing,
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const _Logo(),
                        Flexible(child: _Inputs(formType)),
                        _Buttons(formType),
                        _FormTypeSwitcherButton(formType),
                      ],
                    );
                  },
                );
              },
            ),
          ),
        );
      },
    );
  }
}
