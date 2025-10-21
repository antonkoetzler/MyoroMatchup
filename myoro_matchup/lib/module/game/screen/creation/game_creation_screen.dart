import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:myoro_matchup/myoro_matchup.dart';
import 'package:provider/provider.dart';

part '_widget/_age_range_screen.dart';
part '_widget/_app_bar.dart';
part '_widget/_body.dart';
part '_widget/_button_radio_selection.dart';
part '_widget/_button.dart';
part '_widget/_frequency_day_time_screen_frequency_field.dart';
part '_widget/_frequency_day_time_screen_day_field.dart';
part '_widget/_frequency_day_time_screen_time_field.dart';
part '_widget/_frequency_day_time_screen.dart';
part '_widget/_location_screen.dart';
part '_widget/_name_screen.dart';
part '_widget/_price_screen.dart';
part '_widget/_screen.dart';
part '_widget/_sport_screen.dart';
part '_widget/_visibility_and_image_screen.dart';

/// Screen to create a new [Game].
final class GameCreationScreen extends StatelessWidget {
  const GameCreationScreen({super.key});

  @override
  Widget build(_) {
    return InheritedProvider(
      create: (_) => GameCreationScreenViewModel(),
      child: MyoroScreen(
        configuration: MyoroScreenConfiguration(appBar: _AppBar(), body: const _Body()),
      ),
    );
  }
}
