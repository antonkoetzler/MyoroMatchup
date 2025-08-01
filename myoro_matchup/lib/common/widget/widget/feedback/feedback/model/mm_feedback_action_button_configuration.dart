import 'package:flutter/foundation.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

part 'mm_feedback_action_button_configuration.g.dart';

/// [MmFeedbackConfiguration.actionButtonConfiguration]
@immutable
@myoroModel
final class MmFeedbackActionButtonConfiguration with _$MmFeedbackActionButtonConfigurationMixin {
  const MmFeedbackActionButtonConfiguration({required this.text, required this.onTapUp});

  /// Text of the [MmFeedbackActionButtonConfiguration].
  final String text;

  /// [MyoroButtonConfiguration.onTapUp] of the button.
  final VoidCallback onTapUp;
}
