part of '../game_creation_screen.dart';

/// Banner image field of [_VisibilityAndImageScreen] in [GameCreationScreen].
final class _VisibilityAndImageScreenBannerImageField extends StatelessWidget {
  const _VisibilityAndImageScreenBannerImageField();

  @override
  Widget build(context) {
    final viewModel = context.read<GameCreationScreenViewModel>();
    final onBannerImageChanged = viewModel.onBannerImageChanged;

    return MyoroImagePicker(onChanged: (image) => onBannerImageChanged(image ?? kMyoroEmptyString));
  }
}
