part of '../game_creation_screen.dart';

/// Picture field of [GameCreationScreen].
final class _ProfilePictureField extends StatelessWidget {
  const _ProfilePictureField();

  @override
  Widget build(_) {
    return const MmImagePicker(configuration: MmImagePickerConfiguration(type: MmImagePickerEnum.profilePicture));
  }
}
