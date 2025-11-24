import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

/// Error feedback variant of [MmFeedback].
class MmErrorFeedback extends MyoroFeedback {
  /// Default value of the show icon argument.
  static const showIconDefaultValue = true;

  /// Default constructor.
  MmErrorFeedback({
    super.key,
    bool showIcon = showIconDefaultValue,
    required String title,
    String? subtitle,
    required void Function(BuildContext) onRetry,
  }) : super(
         icon: showIcon ? Icons.error : null,
         title: title,
         subtitle: subtitle ?? localization.mmErrorFeedbackSubtitle,
         actionButtonText: localization.mmErrorFeedbackActionButtonText,
         actionButtonConfiguration: MyoroFeedbackActionButtonConfiguration(onTapUp: (context, _) => onRetry(context)),
       );
}
