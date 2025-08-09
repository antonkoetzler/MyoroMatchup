part of '../mm_image_picker.dart';

/// Content of [MmImagePicker].
///
/// Mainly created to keep [MmImagePicker] a [StatelessWidget].
final class _Content extends StatelessWidget {
  const _Content();

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MmImagePickerThemeExtension>();
    final borderRadius = themeExtension.borderRadius;
    final clipBehavior = themeExtension.clipBehavior;
    final profilePictureConstraints = themeExtension.profilePictureConstraints;
    final bannerConstraints = themeExtension.bannerConstraints;

    final viewModel = context.read<MmImagePickerViewModel>();
    final state = viewModel.state;
    final configuration = state.configuration;
    final type = configuration.type;
    final selectedImageNotifier = state.selectedImageNotifier;

    return ValueListenableBuilder(
      valueListenable: selectedImageNotifier,
      builder: (_, selectedImage, _) {
        return ConstrainedBox(
          constraints: switch (type) {
            MmImagePickerEnum.profilePicture => profilePictureConstraints,
            MmImagePickerEnum.banner => bannerConstraints,
          },
          child: ClipRRect(
            borderRadius: borderRadius,
            clipBehavior: clipBehavior,
            child: Stack(
              alignment: Alignment.center,
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
