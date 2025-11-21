import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Empty feedback variant of [MyoroFeedback].
final class MmEmptyFeedback extends MyoroFeedback {
  /// Default value of [subtitle].
  static const subtitleDefaultValue = kMyoroEmptyString;

  /// Default value of [actionButtonText].
  static const actionButtonTextDefaultValue = kMyoroEmptyString;

  /// Default constructor.
  MmEmptyFeedback({
    super.key,
    required String title,
    String subtitle = subtitleDefaultValue,
    String actionButtonText = actionButtonTextDefaultValue,
    VoidCallback? actionButtonCallback,
  }) : assert(
         !(actionButtonText.isNotEmpty ^ (actionButtonCallback != null)),
         '[MmEmptyFeedbackConfiguration]: If [actionButtonText] is provided, [actionButtonCallback], vice versa.',
       ),
       super(
         iconConfiguration: const MyoroIconConfiguration(icon: Icons.hourglass_empty),
         title: title,
         subtitle: subtitle,
         actionButtonText: actionButtonText,
         actionButtonConfiguration: actionButtonText.isNotEmpty
             ? MyoroFeedbackActionButtonConfiguration(onTapUp: (_, _) => actionButtonCallback!())
             : null,
       );
}
