import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:myoro_matchup/myoro_matchup.dart';
import 'package:provider/provider.dart';

part '_widget/_back_button.dart';
part '_widget/_title.dart';

/// Standard app bar of every screen.
final class MmAppBar extends StatelessWidget {
  const MmAppBar({super.key, required this.configuration});

  /// Configuration.
  final MmAppBarConfiguration configuration;

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MmAppBarThemeExtension>();

    return InheritedProvider.value(
      value: configuration,
      child: MyoroAppBar(
        configuration: MyoroAppBarConfiguration(
          bordered: themeExtension.bordered,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  spacing: themeExtension.spacing,
                  children: [
                    if (AppRouter.canPop()) const _BackButton(),
                    const Flexible(child: _Title()),
                  ],
                ),
              ),
              Flexible(child: configuration.trailing),
            ],
          ),
        ),
      ),
    );
  }
}
