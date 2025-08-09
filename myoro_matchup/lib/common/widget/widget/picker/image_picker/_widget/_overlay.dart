part of '../mm_image_picker.dart';

/// Tappable overlay [Widget] of [MmImagePicker].
final class _Overlay extends StatelessWidget {
  const _Overlay();

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MmImagePickerThemeExtension>();

    final viewModel = context.read<MmImagePickerViewModel>();

    return MyoroButton(
      configuration: MyoroButtonConfiguration(
        backgroundColorBuilder: themeExtension.overlayBackgroundColorBuilder,
        cursor: themeExtension.overlayCursor,
        onTapUp: (_) => viewModel.openPicker(),
      ),
      builder: (_, _) => const SizedBox.shrink(),
    );
  }
}
