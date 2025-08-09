part of '../mm_image_picker.dart';

/// [Widget] shown when there isn't an image selected in [MmImagePicker].
final class _SelectedImageUnselectedState extends StatelessWidget {
  const _SelectedImageUnselectedState();

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MmImagePickerThemeExtension>();
    return Icon(Icons.image, size: themeExtension.selectedImageUnselectedStateIconSize);
  }
}
