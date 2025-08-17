import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:myoro_matchup/myoro_matchup.dart';
import 'package:provider/provider.dart';

part '_widget/_age_range_field.dart';
part '_widget/_app_bar.dart';
part '_widget/_banner_field.dart';
part '_widget/_body.dart';
part '_widget/_competitiveness_field.dart';
part '_widget/_field_row.dart';
part '_widget/_frequency_field.dart';
part '_widget/_date_field.dart';
part '_widget/_time_field.dart';
part '_widget/_location_field.dart';
part '_widget/_monthly_price_field.dart';
part '_widget/_name_field.dart';
part '_widget/_one_time_price_field.dart';
part '_widget/_player_quantity_field.dart';
part '_widget/_profile_picture_field.dart';
part '_widget/_sport_field.dart';
part '_widget/_visibility_field.dart';

/// Screen to create a new [Game].
final class GameCreationScreen extends StatelessWidget {
  const GameCreationScreen({super.key});

  @override
  Widget build(_) {
    return InheritedProvider(
      create: (_) => GameCreationScreenViewModel(),
      child: const MyoroScreen(
        configuration: MyoroScreenConfiguration(appBar: _AppBar(), body: _Body()),
      ),
    );
  }
}
