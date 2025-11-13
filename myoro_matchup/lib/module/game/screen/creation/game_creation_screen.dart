import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:myoro_matchup/myoro_matchup.dart';
import 'package:provider/provider.dart';

part '_widget/_age_range_screen.dart';
part '_widget/_app_bar.dart';
part '_widget/_body.dart';
part '_widget/_button.dart';
part '_widget/_frequency_day_time_screen_frequency_field.dart';
part '_widget/_frequency_day_time_screen_day_field.dart';
part '_widget/_frequency_day_time_screen_time_field.dart';
part '_widget/_frequency_day_time_screen_bi_weekly_time_field.dart';
part '_widget/_frequency_day_time_screen.dart';
part '_widget/_location_screen.dart';
part '_widget/_name_screen.dart';
part '_widget/_price_screen.dart';
part '_widget/_screen.dart';
part '_widget/_sport_screen.dart';
part '_widget/_visibility_and_image_screen.dart';
part '_widget/_price_screen_input.dart';
part '_widget/_visibility_and_image_screen_visibility_field.dart';
part '_widget/_visibility_and_image_screen_profile_picture_image_field.dart';
part '_widget/_visibility_and_image_screen_banner_image_field.dart';
part '_widget/_frequency_day_time_screen_bi_weekly_day_field.dart';
part '_widget/_day_button_row.dart';
part '_widget/_image_picker.dart';

/// Screen to create a new [Game].
final class GameCreationScreen extends StatelessWidget {
  /// Screens.
  static final screens = [
    _NameScreen(),
    _SportScreen(),
    _FrequencyDayTimeScreen(),
    _LocationScreen(),
    _PriceScreen(),
    _AgeRangeScreen(),
    _VisibilityAndImageScreen(),
  ];

  /// Default constructor.
  const GameCreationScreen({super.key});

  /// Build function.
  @override
  Widget build(_) {
    return InheritedProvider(
      create: (_) => getIt<GameCreationScreenViewModel>(),
      child: MyoroScreen(appBar: _AppBar(), body: const _Body()),
    );
  }
}
