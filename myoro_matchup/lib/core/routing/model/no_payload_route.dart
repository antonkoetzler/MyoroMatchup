part of 'route.dart';

/// [Route] without a payload.
abstract class NoPayloadRoute extends Route {
  NoPayloadRoute({super.parentLocation, super.name, required Widget child, super.routes})
    : super(builder: (_, _) => child);

  /// Creates the [RouteNavigationConfiguration] to make a navigation to this [NoPayloadRoute].
  RouteNavigationConfiguration navigate() {
    return RouteNavigationConfiguration(location: location);
  }
}
