part of '../mm_image_picker.dart';

/// Tappable overlay [Widget] of [MmImagePicker].
final class _Overlay extends StatelessWidget {
  const _Overlay();

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MmImagePickerThemeExtension>();

    final viewModel = context.read<MmImagePickerViewModel>();

    return MouseRegion(
      cursor: themeExtension.overlayCursor,
      child: GestureDetector(
        onTapUp: (_) => viewModel.openPicker(),
        child: ColoredBox(color: themeExtension.overlayColor),
      ),
    );
  }
}
