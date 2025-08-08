part of '../mm_image_picker.dart';

/// Content of [MmImagePicker].
///
/// Mainly created to keep [MmImagePicker] a [StatelessWidget].
final class _Content extends StatelessWidget {
  const _Content();

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MmImagePickerThemeExtension>();
    final constraints = themeExtension.constraints;
    final borderRadius = themeExtension.borderRadius;
    final clipBehavior = themeExtension.clipBehavior;

    final viewModel = context.read<MmImagePickerViewModel>();
    final state = viewModel.state;
    final selectedImageNotifier = state.selectedImageNotifier;

    return ValueListenableBuilder(
      valueListenable: selectedImageNotifier,
      builder: (_, selectedImage, _) {
        return ConstrainedBox(
          constraints: constraints,
          child: ClipRRect(
            borderRadius: borderRadius,
            clipBehavior: clipBehavior,
            child: Stack(
              children: [
                _SelectedImage(selectedImage),
                const Positioned.fill(child: _Overlay()),
              ],
            ),
          ),
        );
      },
    );
  }
}
