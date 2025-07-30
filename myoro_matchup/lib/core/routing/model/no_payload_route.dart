import 'package:flutter/widgets.dart' hide Route;
import 'package:myoro_matchup/myoro_matchup.dart';

/// [Route] without a payload.
abstract class NoPayloadRoute extends Route {
  NoPayloadRoute({super.parentLocation, required super.name, required Widget child, super.routes})
    : super(builder: (_, _) => child);

  /// Creates the [RouteNavigationConfiguration] to make a navigation to this [NoPayloadRoute].
  RouteNavigationConfiguration navigate() {
    return RouteNavigationConfiguration(location: location);
  }
}
