part of '../game_creation_screen.dart';

/// Generic screen of [GameCreationScreen].
final class _Screen extends StatelessWidget {
  const _Screen({required this.title, required this.child});

  final String title;
  final Widget child;

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<GameCreationScreenThemeExtension>();
    final titleTextStyle = themeExtension.titleTextStyle;
    final spacing = themeExtension.spacing;

    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(title, style: titleTextStyle),
          Expanded(
            child: MyoroSingleChildScrollable(
              child: Padding(
                padding: EdgeInsets.only(top: spacing),
                child: child,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
