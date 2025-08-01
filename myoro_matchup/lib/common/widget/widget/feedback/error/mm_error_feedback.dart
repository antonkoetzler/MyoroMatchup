import 'package:flutter/material.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

/// Error feedback variant of [MmFeedback].
final class MmErrorFeedback extends StatelessWidget {
  const MmErrorFeedback({super.key, required this.configuration});

  /// Configuration.
  final MmErrorFeedbackConfiguration configuration;

  @override
  Widget build(_) => MmFeedback(configuration: configuration);
}
