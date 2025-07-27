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
        themeExtensionsBuilder: getIt<ModulesController>().themeExtensionsBuilder,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        router: getIt<AppRouter>().router,
        builder: (_, child) => Builder(key: localizationKey, builder: (_) => child!),
      ),
    );
  }
}
