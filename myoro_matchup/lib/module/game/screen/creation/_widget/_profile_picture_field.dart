part of '../game_creation_screen.dart';

/// Picture field of [GameCreationScreen].
final class _ProfilePictureField extends StatelessWidget {
  const _ProfilePictureField();

  @override
  Widget build(_) {
    return MyoroImagePicker(
      configuration: MyoroImagePickerConfiguration(onChanged: (_) {}),
      style: const MyoroImagePickerStyle(size: Size(double.infinity, 200)),
    );
  }
}
