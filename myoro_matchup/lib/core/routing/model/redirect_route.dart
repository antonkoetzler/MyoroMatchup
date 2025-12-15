part of 'route.dart';

/// [Route] that only redirects to other provides [Route]s.
final class RedirectRoute extends Route {
  /// Default constructor.
  RedirectRoute({super.parentDirectory, required super.name, required super.routes})
    : assert(routes.isNotEmpty, '[RedirectRoute]: [routes] cannot be empty.'),
      super(redirect: (_, state) => state.uri.toString());
}
