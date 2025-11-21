import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

part 'no_payload_route.dart';
part 'payload_route.dart';
part 'redirect_route.dart';

/// Abtract model of representing a route.
sealed class Route<T extends Object> {
  /// Default constructor.
  Route({
    String parentLocation = kMyoroEmptyString,
    String name = kMyoroEmptyString,
    this.redirect,
    this.builder,
    this.routes = const [],
  }) : name = '/$name',
       location = '${parentLocation.isNotEmpty ? '/$parentLocation' : ''}/$name';

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
