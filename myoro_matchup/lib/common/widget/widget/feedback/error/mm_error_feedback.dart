import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

/// Error feedback variant of [MmFeedback].
final class MmErrorFeedback extends MyoroFeedback {
  MmErrorFeedback({super.key, required String title, String? subtitle, required VoidCallback onRetry})
    : super(
        iconConfiguration: const MyoroIconConfiguration(icon: Icons.error),
        titleConfiguration: MyoroTextConfiguration(text: title),
        subtitleConfiguration: MyoroTextConfiguration(text: subtitle ?? localization.mmErrorFeedbackSubtitle),
        actionButtonConfiguration: MyoroFeedbackActionButtonConfiguration(
          textConfiguration: MyoroTextConfiguration(text: localization.mmErrorFeedbackActionButtonText),
          onTapUp: (_) => onRetry(),
        ),
      );
}
