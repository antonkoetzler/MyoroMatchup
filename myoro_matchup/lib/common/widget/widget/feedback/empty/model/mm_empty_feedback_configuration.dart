import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

part 'mm_empty_feedback_configuration.g.dart';

/// Configuration model of [MmEmptyFeedback].
@immutable
@myoroModel
final class MmEmptyFeedbackConfiguration extends MyoroFeedbackConfiguration with _$MmEmptyFeedbackConfigurationMixin {
  MmEmptyFeedbackConfiguration({
    required String title,
    String? subtitle,
    String? actionButtonText,
    VoidCallback? actionButtonCallback,
  }) : assert(
         !((actionButtonText != null) ^ (actionButtonCallback != null)),
         '[MmEmptyFeedbackConfiguration]: If [actionButtonText] is provided, [actionButtonCallback], vice versa.',
       ),
       super(
         iconConfiguration: const MyoroIconConfiguration(icon: Icons.hourglass_empty),
         titleConfiguration: MyoroTextConfiguration(text: title),
         subtitleConfiguration: subtitle != null ? MyoroTextConfiguration(text: subtitle) : null,
         actionButtonConfiguration: actionButtonText != null && actionButtonCallback != null
             ? MyoroIconTextButtonConfiguration(
                 textConfiguration: MyoroTextConfiguration(text: actionButtonText),
                 onTapUp: (_) => actionButtonCallback(),
               )
             : null,
       );
}
