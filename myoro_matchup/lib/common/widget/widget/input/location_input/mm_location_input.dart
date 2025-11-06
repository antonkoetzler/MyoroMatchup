import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:myoro_matchup/myoro_matchup.dart';
import 'package:provider/provider.dart';

part '_widget/_item.dart';
part '_widget/_mm_location_input_state.dart';

/// Location input.
final class MmLocationInput extends StatefulWidget {
  const MmLocationInput({super.key, required this.type});

  /// Type of location being queried.
  final LocationTypeEnum type;

  /// Create state function.
  @override
  State<MmLocationInput> createState() => _MmLocationInputState();
}
