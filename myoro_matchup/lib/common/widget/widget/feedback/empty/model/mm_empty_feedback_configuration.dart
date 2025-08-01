import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

part 'mm_empty_feedback_configuration.g.dart';

/// Configuration model of [MmEmptyFeedback].
@immutable
@myoroModel
final class MmEmptyFeedbackConfiguration extends MmFeedbackConfiguration with _$MmEmptyFeedbackConfigurationMixin {
  const MmEmptyFeedbackConfiguration({required super.title, super.subtitle, super.actionButtonConfiguration})
    : super(icon: Icons.hourglass_empty);
}
