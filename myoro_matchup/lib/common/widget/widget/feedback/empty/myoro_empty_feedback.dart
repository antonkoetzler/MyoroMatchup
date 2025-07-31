import 'package:flutter/material.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

/// Empty feedback variant of [MyoroFeedback].
final class MyoroEmptyFeedback extends StatelessWidget {
  const MyoroEmptyFeedback({super.key, required this.configuration});

  /// Configuration.
  final MyoroEmptyFeedbackConfiguration configuration;

  @override
  Widget build(_) => MyoroFeedback(configuration: configuration);
}
