import 'package:flutter/material.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

/// Empty feedback variant of [MmFeedback].
final class MmEmptyFeedback extends StatelessWidget {
  const MmEmptyFeedback({super.key, required this.configuration});

  /// Configuration.
  final MmEmptyFeedbackConfiguration configuration;

  @override
  Widget build(_) => MmFeedback(configuration: configuration);
}
