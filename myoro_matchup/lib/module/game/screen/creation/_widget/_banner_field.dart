part of '../game_creation_screen.dart';

/// Banner field of [GameCreationScreen].
final class _BannerField extends StatelessWidget {
  const _BannerField();

  @override
  Widget build(_) {
    return const MmImagePicker(configuration: MmImagePickerConfiguration());
  }
}
