part of 'route.dart';

/// [Route] accepting a payload.
abstract class PayloadRoute<T extends Object> extends Route<T> {
  PayloadRoute({
    super.parentLocation,
    required super.name,
    required Widget Function(BuildContext, T) builder,
    super.routes,
  }) : super(builder: (context, state) => builder(context, state.extra as T));

  /// Creates the [RouteNavigationConfiguration] to make a navigation to this [NoPayloadRoute].
  RouteNavigationConfiguration navigate(T payload) {
    return RouteNavigationConfiguration(location: location, payload: payload);
  }
}
