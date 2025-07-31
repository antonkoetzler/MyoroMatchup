import 'package:flutter/material.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

/// Error feedback variant of [MyoroFeedback].
final class MyoroErrorFeedback extends StatelessWidget {
  const MyoroErrorFeedback({super.key, required this.configuration});

  /// Configuration.
  final MyoroErrorFeedbackConfiguration configuration;

  @override
  Widget build(_) => MyoroFeedback(configuration: configuration);
}
