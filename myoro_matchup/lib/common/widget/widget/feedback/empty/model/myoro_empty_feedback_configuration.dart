import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

part 'myoro_empty_feedback_configuration.g.dart';

/// Configuration model of [MyoroEmptyFeedback].
@immutable
@myoroModel
final class MyoroEmptyFeedbackConfiguration extends MyoroFeedbackConfiguration
    with _$MyoroEmptyFeedbackConfigurationMixin {
  const MyoroEmptyFeedbackConfiguration({required super.title, super.subtitle, super.actionButtonConfiguration})
    : super(icon: Icons.hourglass_empty);
}
