import 'package:flutter/material.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

/// Configuration model of [MyoroFeedback].
@immutable
abstract class MyoroFeedbackConfiguration {
  const MyoroFeedbackConfiguration({
    required this.icon,
    required this.title,
    this.subtitle,
    this.actionButtonConfiguration,
  }) : assert(title.length != 0, '[FeedbackConfiguration]: Both [title] cannot be empty.');

  /// [IconData] of the feedback.
  final IconData icon;

  /// Title of the [Feedback].
  final String title;

  /// Subtitle of the [Feedback].
  final String? subtitle;

  /// Configuration of the action button.
  final MyoroFeedbackActionButtonConfiguration? actionButtonConfiguration;
}
