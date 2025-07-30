import 'package:go_router/go_router.dart';

/// Abtract model of representing a route.
abstract class Route<T extends Object> {
  Route({String? parentLocation, required String name, this.redirect, this.builder, this.routes = const []})
    : location = '${parentLocation ?? ''}/$name',
      name = '/$name';

  /// The full location of the [Route]
  ///
  /// i.e. /game/listing/:id
  final String location;

  /// The name of the route.
  ///
  /// i.e. game
  final String name;

  /// [GoRoute.redirect]
  final GoRouterRedirect? redirect;

  /// [GoRoute.builder]
  final GoRouterWidgetBuilder? builder;

  /// [GoRoute.routes]
  final List<Route> routes;

  /// [GoRoute] generator.
  GoRoute get goRoute {
    return GoRoute(path: name, redirect: redirect, builder: builder, routes: routes.map((r) => r.goRoute).toList());
  }
}
