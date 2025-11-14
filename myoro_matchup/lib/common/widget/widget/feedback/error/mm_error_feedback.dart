import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

/// Error feedback variant of [MmFeedback].
final class MmErrorFeedback extends MyoroFeedback {
  /// Default constructor.
  MmErrorFeedback({super.key, required String title, String? subtitle, required VoidCallback onRetry})
    : super(
        iconConfiguration: const MyoroIconConfiguration(icon: Icons.error),
        title: title,
        subtitle: subtitle ?? localization.mmErrorFeedbackSubtitle,
        actionButtonText: localization.mmErrorFeedbackActionButtonText,
        actionButtonConfiguration: MyoroFeedbackActionButtonConfiguration(onTapUp: (_) => onRetry()),
      );
}
