import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

part 'myoro_feedback_configuration.g.dart';

/// Configuration model of [MyoroFeedback].
@immutable
@myoroModel
class MyoroFeedbackConfiguration with _$MyoroFeedbackConfigurationMixin {
  const MyoroFeedbackConfiguration({
    required this.icon,
    required this.title,
    required this.subtitle,
    this.actionButtonConfiguration,
  }) : assert(
         title.length > 0 && subtitle.length > 0,
         '[FeedbackConfiguration]: Both [title] and [subtitle] cannot be empty.',
       );

  /// [IconData] of the feedback.
  final IconData icon;

  /// Title of the [Feedback].
  final String title;

  /// Subtitle of the [Feedback].
  final String subtitle;

  /// Configuration of the action button.
  final MyoroFeedbackActionButtonConfiguration? actionButtonConfiguration;
}
