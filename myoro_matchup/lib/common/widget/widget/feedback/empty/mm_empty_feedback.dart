import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Empty feedback variant of [MyoroFeedback].
final class MmEmptyFeedback extends MyoroFeedback {
  MmEmptyFeedback({
    super.key,
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
         actionButtonConfiguration: actionButtonText != null
             ? MyoroFeedbackActionButtonConfiguration(
                 textConfiguration: MyoroTextConfiguration(text: actionButtonText),
                 onTapUp: (_) => actionButtonCallback!(),
               )
             : null,
       );
}
