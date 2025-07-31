import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:myoro_matchup/l10n/app_localizations.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

/// Root [Widget] of the application.
final class Root extends StatelessWidget {
  const Root({super.key});

  @override
  Widget build(_) {
    return MyoroApp(
      configuration: MyoroAppConfiguration(
        themeMode: ThemeMode.dark,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        router: getIt<AppRouter>().router,
        themeExtensionsBuilder: (isDarkMode, colorScheme, textTheme) => [
          ...commonThemeExtensionsBuilder(isDarkMode, colorScheme, textTheme),
          ...gameModuleThemeExtensionsBuilder(isDarkMode, colorScheme, textTheme),
          ...loginSignupModuleThemeExtensionsBuilder(isDarkMode, colorScheme, textTheme),
        ],
      ),
    );
  }
}
