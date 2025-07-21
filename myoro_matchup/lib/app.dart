import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:myoro_matchup/l10n/app_localizations.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

/// Root [Widget] of the application.
final class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(_) {
    return const MyoroApp(
      configuration: MyoroAppConfiguration(
        themeMode: ThemeMode.dark,
        themeExtensionsBuilder: createThemeExtensions,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        home: GameScreen(),
      ),
    );
  }
}
