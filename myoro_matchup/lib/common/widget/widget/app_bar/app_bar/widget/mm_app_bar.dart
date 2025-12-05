import 'package:flutter/material.dart' hide Route;
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

part '../_widget/_back_button.dart';
part '../_widget/_title.dart';
part '../_widget/_menu_button.dart';
part '../_widget/_menu_modal.dart';
part '../_widget/_menu_modal_item.dart';
part '../_widget/_logo.dart';

/// Standard app bar of every screen.
///
/// This class implements [PreferredSizeWidget] to provide a consistent height
/// for all app bars. Instead of wrapping this widget, screen-specific app bars
/// should extend this class directly:
///
/// ```dart
/// final class _AppBar extends MmAppBar {
///   const _AppBar() : super(
///     title: 'Screen Title',
///     trailing: YourTrailingWidget(),
///   );
/// }
/// ```
///
/// This approach eliminates the need to implement [PreferredSizeWidget] in
/// every screen's app bar class.
class MmAppBar extends StatelessWidget implements PreferredSizeWidget {
  /// Default value of [title].
  static const titleDefaultValue = kMyoroEmptyString;

  const MmAppBar({super.key, this.onBack, this.title = titleDefaultValue});

  /// Callback execute when the back button is pressed.
  final VoidCallback? onBack;

  /// Leading [Widget].
  final String title;

  /// Build function.
  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MmAppBarThemeExtension>();
    final bordered = themeExtension.bordered;

    return MyoroAppBar(
      showBottomDivider: bordered,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [if (MmRouter.canPop()) _BackButton(onBack) else const _Logo(), const _MenuButton()],
          ),
          if (title.isNotEmpty) Positioned(child: _Title(title)),
        ],
      ),
    );
  }

  /// Preferred size of [MmAppBar].
  @override
  Size get preferredSize => const Size.fromHeight(kMyoroMultiplier * 16);
}
