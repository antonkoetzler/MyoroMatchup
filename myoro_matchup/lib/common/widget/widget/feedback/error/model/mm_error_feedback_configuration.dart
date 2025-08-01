import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

part 'mm_error_feedback_configuration.g.dart';

/// Configuration model of [MmErrorFeedback].
@immutable
@myoroModel
final class MmErrorFeedbackConfiguration extends MmFeedbackConfiguration with _$MmErrorFeedbackConfigurationMixin {
  MmErrorFeedbackConfiguration({required super.title, String? subtitle, required this.retryCallback})
    : super(
        icon: Icons.error,
        subtitle: subtitle ?? localization.myoroErrorFeedbackSubtitle,
        actionButtonConfiguration: MmFeedbackActionButtonConfiguration(
          text: localization.myoroErrorFeedbackActionButtonText,
          onTapUp: retryCallback,
        ),
      );

  final VoidCallback retryCallback;
}
