import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Model representing a folder within the lib/module folder.
abstract class Module {
  const Module({required this.route, required this.themeExtensionsBuilder});

  /// Contains all of the routing of the [Module].
  final RouteBase route;

  /// [ThemeExtension]s of the [Module].
  final MyoroAppThemeExtensionsBuilder themeExtensionsBuilder;
}
