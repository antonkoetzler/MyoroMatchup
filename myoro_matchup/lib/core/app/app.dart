import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:myoro_matchup/l10n/gen/app_localizations.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

/// Root [Widget] of the application.
final class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(_) {
    return MyoroApp(
      themeMode: ThemeMode.dark,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      router: getIt<AppRouter>().router,
      themeExtensionsBuilder: (isDarkMode, colorScheme, textTheme) => [
        ...commonThemeExtensionsBuilder(isDarkMode, colorScheme, textTheme),
        ...gameModuleThemeExtensionsBuilder(isDarkMode, colorScheme, textTheme),
        ...homeModuleThemeExtensionsBuilder(isDarkMode, colorScheme, textTheme),
        ...invitationModuleThemeExtensionsBuilder(isDarkMode, colorScheme, textTheme),
        ...loginSignupModuleThemeExtensionsBuilder(isDarkMode, colorScheme, textTheme),
      ],
    );
  }
}
