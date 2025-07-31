import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:myoro_matchup/myoro_matchup.dart';
import 'package:provider/provider.dart';

part '_widget/_action_button.dart';
part '_widget/_icon.dart';
part '_widget/_title.dart';
part '_widget/_subtitle.dart';

/// Basic feedback widget.
final class MyoroFeedback extends StatelessWidget {
  const MyoroFeedback({super.key, required this.configuration});

  /// Configuration.
  final MyoroFeedbackConfiguration configuration;

  @override
  Widget build(_) {
    return InheritedProvider.value(
      value: configuration,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const _Icon(),
          const _Title(),
          if (configuration.subtitle != null) const _Subtitle(),
          const _ActionButton(),
        ],
      ),
    );
  }
}
