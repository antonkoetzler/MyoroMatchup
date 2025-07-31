import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

part 'myoro_error_feedback_configuration.g.dart';

/// Configuration model of [MyoroErrorFeedback].
@immutable
@myoroModel
final class MyoroErrorFeedbackConfiguration extends MyoroFeedbackConfiguration
    with _$MyoroErrorFeedbackConfigurationMixin {
  MyoroErrorFeedbackConfiguration({required super.title, String? subtitle, required this.retryCallback})
    : super(
        icon: Icons.error,
        subtitle: subtitle ?? localization.myoroErrorFeedbackSubtitle,
        actionButtonConfiguration: MyoroFeedbackActionButtonConfiguration(
          text: localization.myoroErrorFeedbackActionButtonText,
          onTapUp: retryCallback,
        ),
      );

  final VoidCallback retryCallback;
}
