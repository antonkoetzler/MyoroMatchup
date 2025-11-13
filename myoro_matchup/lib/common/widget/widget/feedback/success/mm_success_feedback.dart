import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

/// Success feedback variant of [MmFeedback].
final class MmSuccessFeedback extends MyoroFeedback {
  MmSuccessFeedback({super.key, required String title, String? subtitle, required VoidCallback onFinishButtonTapped})
    : super(
        iconConfiguration: const MyoroIconConfiguration(icon: Icons.check),
        titleConfiguration: MyoroTextConfiguration(text: title),
        subtitleConfiguration: MyoroTextConfiguration(text: subtitle ?? localization.mmSuccessFeedbackSubtitle),
        actionButtonConfiguration: MyoroFeedbackActionButtonConfiguration(
          textConfiguration: MyoroTextConfiguration(text: localization.mmSuccessFeedbackActionButtonText),
          onTapUp: (_) => onFinishButtonTapped(),
        ),
      );
}
