import 'package:flutter/foundation.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

part 'myoro_feedback_action_button_configuration.g.dart';

/// [MyoroFeedbackConfiguration.actionButtonConfiguration]
@immutable
@myoroModel
final class MyoroFeedbackActionButtonConfiguration with _$MyoroFeedbackActionButtonConfigurationMixin {
  const MyoroFeedbackActionButtonConfiguration({required this.text, required this.onTapUp});

  /// Text of the [MyoroFeedbackActionButtonConfiguration].
  final String text;

  /// [MyoroButtonConfiguration.onTapUp] of the button.
  final VoidCallback onTapUp;
}
