/// Model to encapsulate a repository of [Route]s.
///
/// Only function as of right now if storing the parent directory name of the route.
abstract interface class RouteRepository {
  /// Parent directory.
  String get parentDirectory;
}
