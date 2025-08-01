import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

part 'mm_app_bar_configuration.g.dart';

/// Configuration model of [MmAppBar].
@immutable
@myoroModel
final class MmAppBarConfiguration with _$MmAppBarConfigurationMixin {
  const MmAppBarConfiguration({this.onBack, required this.title, required this.trailing});

  MmAppBarConfiguration.fake()
    : onBack = faker.randomGenerator.boolean() ? (() {}) : null,
      title = faker.lorem.word(),
      trailing = Text(faker.lorem.word());

  /// Callback execute when the back button is pressed.
  final VoidCallback? onBack;

  /// Leading [Widget].
  final String title;

  /// Trailing [Widget].
  final Widget trailing;
}
