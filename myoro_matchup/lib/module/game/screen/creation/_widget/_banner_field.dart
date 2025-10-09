part of '../game_creation_screen.dart';

/// Banner field of [GameCreationScreen].
final class _BannerField extends StatelessWidget {
  const _BannerField();

  @override
  Widget build(context) {
    return MyoroImagePicker(configuration: MyoroImagePickerConfiguration(onChanged: (_) {}));
  }
}
