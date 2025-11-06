part of '../mm_app_bar.dart';

/// Profile button of [MmAppBar].
final class _ProfileButton extends StatelessWidget {
  const _ProfileButton();

  @override
  Widget build(context) {
    return MyoroIconTextButton(
      iconConfiguration: const MyoroIconConfiguration(icon: Icons.person),
      onTapUp: (_) => AppRouter.push(Routes.userRoutes.userScreen.navigate()),
    );
  }
}
