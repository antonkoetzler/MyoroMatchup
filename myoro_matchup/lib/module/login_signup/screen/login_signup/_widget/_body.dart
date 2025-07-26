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

    // TODO: Make this scrollable.
    return Padding(
      padding: themeExtension.bodyPadding,
      child: ValueListenableBuilder(
        valueListenable: formTypeNotifier,
        builder: (_, formType, _) {
          return Column(
            spacing: themeExtension.bodySpacing,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const _Logo(),
              Flexible(child: _Inputs(formType)),
              const _Buttons(),
            ],
          );
        },
      ),
    );
  }
}
