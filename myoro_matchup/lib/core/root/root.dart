import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

/// Root [Widget] of the application.
final class Root extends StatelessWidget {
  /// Default constructor.
  const Root({super.key});

  /// Build function.
  @override
  Widget build(context) {
    final appRouter = getIt<MmRouter>();
    final router = appRouter.router;

    return MyoroApp(
      title: 'Myoro Matchup',
      themeMode: ThemeMode.dark,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      router: router,
      themeExtensionsBuilder: (isDarkMode, colorScheme, textTheme) => [
        ...commonThemeExtensionsBuilder(isDarkMode, colorScheme, textTheme),
        ...gameModuleThemeExtensionsBuilder(isDarkMode, colorScheme, textTheme),
        ...homeModuleThemeExtensionsBuilder(isDarkMode, colorScheme, textTheme),
        ...invitationModuleThemeExtensionsBuilder(isDarkMode, colorScheme, textTheme),
        ...loginSignupModuleThemeExtensionsBuilder(isDarkMode, colorScheme, textTheme),
        ...subscriptionModuleThemeExtensionsBuilder(isDarkMode, colorScheme, textTheme),
        ...userModuleThemeExtensionsBuilder(isDarkMode, colorScheme, textTheme),
      ],
    );
  }
}
