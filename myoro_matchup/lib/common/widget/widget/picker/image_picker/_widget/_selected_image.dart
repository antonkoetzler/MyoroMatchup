part of '../mm_image_picker.dart';

/// Selected image of [MmImagePicker].
final class _SelectedImage extends StatelessWidget {
  const _SelectedImage(this._selectedImage);

  final String? _selectedImage;

  @override
  Widget build(context) {
    return _selectedImage != null ? Image.asset(_selectedImage) : const _SelectedImageUnselectedState();
  }
}
