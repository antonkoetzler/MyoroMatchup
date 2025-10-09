part of '../game_creation_screen.dart';

/// Picture field of [GameCreationScreen].
final class _ProfilePictureField extends StatelessWidget {
  const _ProfilePictureField();

  @override
  Widget build(_) {
    return MyoroImagePicker(configuration: MyoroImagePickerConfiguration(onChanged: (_) {}));
  }
}
