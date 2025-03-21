import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kiwi/kiwi.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

/// Root [Widget] of the application.
final class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: KiwiContainer().resolve<ThemeCubit>(),
      child: BlocBuilder<ThemeCubit, ThemeEnum>(
        builder: (_, ThemeEnum themeEnum) {
          return MyoroMaterialApp(
            title: 'MyoroMatchup',
            themeExtensionsBuilder: _themeExtensionsBuilder,
            home: const LoginSignupScreen(),
          );
        },
      ),
    );
  }

  List<ThemeExtension> _themeExtensionsBuilder(ColorScheme colorScheme, _) {
    return createThemeExtensions(colorScheme);
  }
}
