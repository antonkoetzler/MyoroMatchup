part of '../game_creation_screen.dart';

/// Profile picture image field of [_VisibilityAndImageScreen] in [GameCreationScreen].
final class _VisibilityAndImageScreenProfilePictureImageField extends StatelessWidget {
  const _VisibilityAndImageScreenProfilePictureImageField();

  @override
  Widget build(context) {
    final gameCreationScreenVisibilityAndImageScreenProfilePictureImageFieldTitle =
        localization.gameCreationScreenVisibilityAndImageScreenProfilePictureImageFieldTitle;

    final themeExtension = context.resolveThemeExtension<GameCreationScreenThemeExtension>();
    final visibilityAndImageScreenProfilePictureImageFieldStyle =
        themeExtension.visibilityAndImageScreenProfilePictureImageFieldStyle;

    final viewModel = context.read<GameCreationScreenViewModel>();
    final onProfilePictureImageChanged = viewModel.onProfilePictureImageChanged;

    return _ImagePicker(
      gameCreationScreenVisibilityAndImageScreenProfilePictureImageFieldTitle,
      (image) => onProfilePictureImageChanged(image ?? kMyoroEmptyString),
      visibilityAndImageScreenProfilePictureImageFieldStyle,
    );
  }
}
