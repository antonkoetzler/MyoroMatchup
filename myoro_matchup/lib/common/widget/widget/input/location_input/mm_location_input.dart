import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:myoro_matchup/myoro_matchup.dart';
import 'package:provider/provider.dart';

part '_widget/_item.dart';
part '_widget/_mm_location_input_state.dart';

/// Location input.
final class MmLocationInput extends StatefulWidget {
  const MmLocationInput({
    super.key,
    required this.type,
    required this.onChanged,
    this.focusNode,
    this.validation,
    this.onFieldSubmitted,
  });

  /// Type of location being queried.
  final LocationTypeEnum type;

  /// On changed.
  final MmLocationInputOnChanged onChanged;

  /// Focus node.
  final FocusNode? focusNode;

  /// Validation.
  final MmLocationInputValidation? validation;

  /// On field submitted.
  final MmLocationInputOnFieldSubmitted? onFieldSubmitted;

  /// Create state function.
  @override
  State<MmLocationInput> createState() {
    return _MmLocationInputState();
  }
}
