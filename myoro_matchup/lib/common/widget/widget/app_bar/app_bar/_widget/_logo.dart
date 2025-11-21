part of '../widget/mm_app_bar.dart';

/// Logo of [MmAppBar].
final class _Logo extends StatelessWidget {
  const _Logo();

  @override
  Widget build(context) {
    return MyoroImage(path: MmImages.svgs.logo, width: kToolbarHeight - kMyoroMultiplier * 7, fit: BoxFit.contain);
  }
}
