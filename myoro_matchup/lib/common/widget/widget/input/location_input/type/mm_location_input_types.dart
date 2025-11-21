import 'package:myoro_matchup/myoro_matchup.dart';

/// On changed.
typedef MmLocationInputOnChanged = void Function(LocationResponseDto? location);

/// Validation.
typedef MmLocationInputValidation = String? Function(LocationResponseDto? location);

/// Function executed when the enter key is pressed.
typedef MmLocationInputOnFieldSubmitted = void Function(LocationResponseDto? location);
