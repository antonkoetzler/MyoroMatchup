part of '../game_creation_screen.dart';

/// Visibility and image screen of [GameCreationScreen].
final class _VisibilityAndImageScreen extends StatelessWidget {
  const _VisibilityAndImageScreen();

  @override
  Widget build(context) {
    final gameCreationScreenVisibilityAndImageScreenTitle = localization.gameCreationScreenVisibilityAndImageScreenTitle;

    final themeExtension = context.resolveThemeExtension<GameCreationScreenThemeExtension>();
    final spacing = themeExtension.spacing;

    return _Screen(
      title: gameCreationScreenVisibilityAndImageScreenTitle,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        spacing: spacing,
        children: [
          const _VisibilityAndImageScreenVisibilityField(),
          SizedBox(
            height: 100, // TODO
            child: Row(
              spacing: spacing,
              children: const [
                Expanded(child: _VisibilityAndImageScreenProfilePictureImageField()),
                Expanded(child: _VisibilityAndImageScreenBannerImageField()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
