import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:myoro_matchup/myoro_matchup.dart';
import 'package:provider/provider.dart';

part '_widget/_back_button.dart';
part '_widget/_title.dart';

/// Standard app bar of every screen.
///
/// This class implements [PreferredSizeWidget] to provide a consistent height
/// for all app bars. Instead of wrapping this widget, screen-specific app bars
/// should extend this class directly:
///
/// ```dart
/// final class _AppBar extends MmAppBar {
///   const _AppBar() : super(
///     configuration: MmAppBarConfiguration(
///       title: 'Screen Title',
///       trailing: YourTrailingWidget(),
///     ),
///   );
/// }
/// ```
///
/// This approach eliminates the need to implement [PreferredSizeWidget] in
/// every screen's app bar class.
class MmAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MmAppBar({super.key, required this.configuration});

  /// Configuration.
  final MmAppBarConfiguration configuration;

  @override
  Size get preferredSize => const Size.fromHeight(kMyoroMultiplier * 16);

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MmAppBarThemeExtension>();

    return InheritedProvider.value(
      value: configuration,
      child: MyoroAppBar(
        showBottomDivider: themeExtension.bordered,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Row(
              spacing: themeExtension.spacing,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if (AppRouter.canPop()) const _BackButton(),
                ?configuration.leading,
                const Spacer(),
                Flexible(child: configuration.trailing),
              ],
            ),
            const Positioned(child: _Title()),
          ],
        ),
      ),
    );
  }
}
