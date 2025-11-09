part of '../game_creation_screen.dart';

/// Visibility and image screen of [GameCreationScreen].
final class _VisibilityAndImageScreen extends _Screen {
  _VisibilityAndImageScreen()
    : super(
        title: localization.gameCreationScreenVisibilityAndImageScreenTitle,
        builder: (context) {
          final themeExtension = context.resolveThemeExtension<GameCreationScreenThemeExtension>();
          final spacing = themeExtension.spacing;

          return Column(
            mainAxisSize: MainAxisSize.min,
            spacing: spacing,
            children: const [
              _VisibilityAndImageScreenProfilePictureImageField(),
              _VisibilityAndImageScreenBannerImageField(),
              _VisibilityAndImageScreenVisibilityField(),
            ],
          );
        },
      );
}
