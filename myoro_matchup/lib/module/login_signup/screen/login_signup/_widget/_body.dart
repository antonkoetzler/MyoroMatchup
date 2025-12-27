part of '../widget/login_signup_screen.dart';

/// [MyoroScreen.body] of [LoginSignupScreen].
final class _Body extends StatelessWidget {
  /// Default constructor.
  const _Body();

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<LoginSignupScreenThemeExtension>();
    final bodyPadding = themeExtension.bodyPadding;
    final logoButtonsSpacing = themeExtension.logoButtonsSpacing;
    final buttonsVersionSpacing = themeExtension.buttonsVersionSpacing;
    final logoSize = themeExtension.logoSize;

    return Container(
      padding: bodyPadding,
      width: double.infinity,
      child: Column(
        spacing: buttonsVersionSpacing,
        children: [
          Expanded(
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  spacing: logoButtonsSpacing,
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    MyoroImage(path: MmImages.svgs.logo, width: logoSize, fit: BoxFit.contain),
                    const Flexible(child: _Form()),
                  ],
                ),
              ),
            ),
          ),
          const _VersionText(),
        ],
      ),
    );
  }
}
