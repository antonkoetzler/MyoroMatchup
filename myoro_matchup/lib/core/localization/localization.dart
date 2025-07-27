import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:myoro_matchup/l10n/app_localizations.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

/// [GlobalKey] injected within [Root]'s [MyoroAppConfiguration.builder].
final localizationKey = GlobalKey();

/// Function to be able to get the [AppLocalizations] object without needing a [BuildContext].
AppLocalizations get localization => AppLocalizations.of(localizationKey.currentContext!)!;
