import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

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
  }) : super(
         icon: Icons.hourglass_empty,
         title: title,
         subtitle: subtitle,
         actionButtonText: actionButtonCallback != null
             ? (actionButtonText.isNotEmpty ? actionButtonText : localization.mmEmptyFeedbackActionButtonText)
             : kMyoroEmptyString,
         actionButtonConfiguration: actionButtonCallback != null
             ? MyoroFeedbackActionButtonConfiguration(onTapUp: (_, _) => actionButtonCallback())
             : null,
       );
}
