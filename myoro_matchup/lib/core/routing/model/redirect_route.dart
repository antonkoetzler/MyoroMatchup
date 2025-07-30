import 'package:myoro_matchup/myoro_matchup.dart';

/// [Route] that only redirects to other provides [Route]s.
class RedirectRoute extends Route {
  RedirectRoute({required super.name, required super.routes})
    : assert(routes.isNotEmpty, '[RedirectRoute]: [routes] cannot be empty.'),
      super(redirect: (_, state) => state.uri.toString());
}
