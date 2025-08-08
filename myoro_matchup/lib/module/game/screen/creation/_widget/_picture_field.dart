part of '../game_creation_screen.dart';

/// Picture field of [GameCreationScreen].
final class _PictureField extends StatelessWidget {
  const _PictureField();

  @override
  Widget build(_) {
    return const MmImagePicker(configuration: MmImagePickerConfiguration());
  }
}
