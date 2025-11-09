part of '../game_creation_screen.dart';

/// Banner image field of [_VisibilityAndImageScreen] in [GameCreationScreen].
final class _VisibilityAndImageScreenBannerImageField extends StatelessWidget {
  const _VisibilityAndImageScreenBannerImageField();

  @override
  Widget build(context) {
    final gameCreationScreenVisibilityAndImageScreenBannerImageFieldTitle =
        localization.gameCreationScreenVisibilityAndImageScreenBannerImageFieldTitle;

    final viewModel = context.read<GameCreationScreenViewModel>();
    final onBannerImageChanged = viewModel.onBannerImageChanged;

    return _ImagePicker(
      gameCreationScreenVisibilityAndImageScreenBannerImageFieldTitle,
      (image) => onBannerImageChanged(image ?? kMyoroEmptyString),
    );
  }
}
