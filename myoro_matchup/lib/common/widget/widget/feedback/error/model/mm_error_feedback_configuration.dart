import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

part 'mm_error_feedback_configuration.g.dart';

/// Configuration model of [MmErrorFeedback].
@immutable
@myoroModel
final class MmErrorFeedbackConfiguration extends MyoroFeedbackConfiguration with _$MmErrorFeedbackConfigurationMixin {
  MmErrorFeedbackConfiguration({required String title, String? subtitle, required VoidCallback onRetry})
    : super(
        iconConfiguration: const MyoroIconConfiguration(icon: Icons.error),
        titleConfiguration: MyoroTextConfiguration(text: title),
        subtitleConfiguration: MyoroTextConfiguration(text: subtitle ?? localization.mmErrorFeedbackSubtitle),
        actionButtonConfiguration: MyoroIconTextButtonConfiguration(
          textConfiguration: MyoroTextConfiguration(text: localization.mmErrorFeedbackActionButtonText),
          onTapUp: (_) => onRetry(),
        ),
      );
}
