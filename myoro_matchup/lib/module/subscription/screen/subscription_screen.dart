import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

part '_widget/_app_bar.dart';
part '_widget/_body.dart';
part '_widget/_feature_item.dart';
part '_widget/_price_card.dart';
part '_widget/_subscribe_button.dart';
part '_widget/_restore_button.dart';
part '_widget/_legal_links.dart';

/// Screen for managing subscription.
final class SubscriptionScreen extends StatelessWidget {
  /// Default constructor.
  const SubscriptionScreen({super.key});

  /// Build function.
  @override
  Widget build(_) {
    return MyoroScreen(appBar: _AppBar(), body: const _Body());
  }
}
