import 'package:myoro_matchup/myoro_matchup.dart';

/// On changed.
typedef MmLocationInputOnChanged = void Function(Location? location);

/// Validation.
typedef MmLocationInputValidation = String? Function(Location? location);

/// Function executed when the enter key is pressed.
typedef MmLocationInputOnFieldSubmitted = void Function(Location? location);
