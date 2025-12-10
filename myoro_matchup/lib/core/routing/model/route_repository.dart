/// Model to encapsulate a repository of [Route]s.
///
/// Only function as of right now if storing the parent directory name of the route.
abstract class RouteRepository {
  /// Default constructor.
  const RouteRepository({this.rootLocation = '/'})
    : assert(rootLocation.length > 0, '[RouteRepository]: [rootLocation] cannot be empty.');

  /// Parent directory.
  final String rootLocation;
}
