part of '../widget/login_signup_screen.dart';

/// [MyoroScreenConfiguration.bottomNavigationBar] of [LoginSignupScreen].
final class _BottomNavigationBar extends StatelessWidget {
  /// Default constructor.
  const _BottomNavigationBar(this._request, this._formType);

  /// Request.
  final MyoroRequest<void> _request;

  /// Form type.
  final LoginSignupScreenEnum _formType;

  /// Build function.
  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<LoginSignupScreenThemeExtension>();
    final bottomNavigationBarPadding = themeExtension.bottomNavigationBarPadding;
    final formSwitcherActionButtonsSpacing = themeExtension.formSwitcherActionButtonsSpacing;

    final viewModel = context.read<LoginSignupScreenViewModel>();
    final state = viewModel.state;
    final formSwitcherActionsButtonKey = state.formSwitcherActionsButtonKey;
    final formSwitcherActionsButtonHeightController = state.formSwitcherActionsButtonHeightController;

    final status = _request.status;
    final isLoading = status.isLoading;

    return Padding(
      padding: bottomNavigationBarPadding,
      child: isLoading
          ? ValueListenableBuilder(
              valueListenable: formSwitcherActionsButtonHeightController,
              builder: (_, formSwitcherActionsButtonHeight, _) {
                return SizedBox(
                  height: formSwitcherActionsButtonHeight,
                  child: const Center(child: MyoroCircularLoader()),
                );
              },
            )
          : Builder(
              builder: (_) {
                WidgetsBinding.instance.addPostFrameCallback((_) {
                  final renderBox = formSwitcherActionsButtonKey.currentContext?.findRenderObject() as RenderBox?;
                  state.formSwitcherActionsButtonHeight = renderBox?.size.height;
                });

                return Column(
                  key: formSwitcherActionsButtonKey,
                  spacing: formSwitcherActionButtonsSpacing,
                  mainAxisSize: MainAxisSize.min,
                  children: [_FormTypeSwitcherButton(_formType), _ActionButtons(_formType)],
                );
              },
            ),
    );
  }
}
