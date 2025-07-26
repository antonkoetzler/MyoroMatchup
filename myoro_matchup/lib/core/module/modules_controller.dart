import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart' hide Module;
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

/// Model that encapsulates every module (every folder in lib/module).
@singleton
final class ModulesController {
  /// Modules.
  final _modules = [GameModule(), LoginSignupModule()];
  List<Module> get modules => _modules;

  /// [MyoroAppConfiguration.themeExtensionsBuilder].
  List<ThemeExtension> themeExtensionsBuilder(bool isDarkMode, ColorScheme colorScheme, TextTheme textTheme) {
    return _modules.expand((m) => m.themeExtensionsBuilder(isDarkMode, colorScheme, textTheme)).toList();
  }
}
