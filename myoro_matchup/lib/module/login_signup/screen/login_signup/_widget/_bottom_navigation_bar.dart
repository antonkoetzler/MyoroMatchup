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

    final status = _request.status;
    final isLoading = status.isLoading;

    return Padding(
      padding: bottomNavigationBarPadding,
      child: isLoading
          ? const MyoroCircularLoader()
          : Column(
              spacing: formSwitcherActionButtonsSpacing,
              mainAxisSize: MainAxisSize.min,
              children: [_FormTypeSwitcherButton(_formType), _ActionButtons(_formType)],
            ),
    );
  }
}
