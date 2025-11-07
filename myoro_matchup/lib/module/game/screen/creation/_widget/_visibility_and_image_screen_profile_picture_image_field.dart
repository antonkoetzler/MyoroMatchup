part of '../game_creation_screen.dart';

/// Profile picture image field of [_VisibilityAndImageScreen] in [GameCreationScreen].
final class _VisibilityAndImageScreenProfilePictureImageField extends StatelessWidget {
  const _VisibilityAndImageScreenProfilePictureImageField();

  @override
  Widget build(context) {
    final viewModel = context.read<GameCreationScreenViewModel>();
    final onProfilePictureImageChanged = viewModel.onProfilePictureImageChanged;

    return MyoroImagePicker(onChanged: (image) => onProfilePictureImageChanged(image ?? kMyoroEmptyString));
  }
}
