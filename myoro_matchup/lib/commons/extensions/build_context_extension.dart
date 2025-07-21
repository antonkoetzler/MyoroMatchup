import 'package:flutter/material.dart';
import 'package:myoro_matchup/l10n/app_localizations.dart';

/// Extension on [BuildContext].
extension BuildContextExtension on BuildContext {
  AppLocalizations get localization => AppLocalizations.of(this)!;
}
