import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:myoro_matchup/myoro_matchup.dart';
import 'package:provider/provider.dart';

part '_widget/_action_button.dart';
part '_widget/_icon.dart';
part '_widget/_title.dart';
part '_widget/_subtitle.dart';

/// Basic feedback widget.
final class MmFeedback extends StatelessWidget {
  const MmFeedback({super.key, required this.configuration});

  /// Configuration.
  final MmFeedbackConfiguration configuration;

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MmFeedbackThemeExtension>();

    return InheritedProvider.value(
      value: configuration,
      child: Column(
        spacing: themeExtension.spacing,
        mainAxisSize: MainAxisSize.min,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [const _Icon(), const _Title(), if (configuration.subtitle != null) const _Subtitle()],
          ),
          if (configuration.actionButtonConfiguration != null) const _ActionButton(),
        ],
      ),
    );
  }
}
