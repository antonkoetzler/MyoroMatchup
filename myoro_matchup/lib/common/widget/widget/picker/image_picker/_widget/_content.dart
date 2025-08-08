part of '../mm_image_picker.dart';

/// Content of [MmImagePicker].
///
/// Mainly created to keep [MmImagePicker] a [StatelessWidget].
final class _Content extends StatelessWidget {
  const _Content();

  @override
  Widget build(context) {
    final viewModel = context.read<MmImagePickerViewModel>();
    final state = viewModel.state;
    final selectedImageNotifier = state.selectedImageNotifier;

    return ValueListenableBuilder(
      valueListenable: selectedImageNotifier,
      builder: (_, selectedImage, _) {
        return Stack(
          children: [
            _SelectedImage(selectedImage),
            const Positioned.fill(child: _Overlay()),
          ],
        );
      },
    );
  }
}
