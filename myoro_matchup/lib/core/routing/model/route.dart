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
    String parentDirectory = kMyoroEmptyString,
    String name = kMyoroEmptyString,
    this.redirect,
    this.builder,
    this.routes = const [],
  }) : location = '${parentDirectory.isNotEmpty ? '/$parentDirectory' : kMyoroEmptyString}/$name';

  /// The location of the route.
  ///
  /// i.e. game
  final String location;

  /// [GoRoute.redirect]
  final GoRouterRedirect? redirect;

  /// [GoRoute.builder]
  final GoRouterWidgetBuilder? builder;

  /// [GoRoute.routes]
  final List<Route> routes;

  /// [GoRoute] generator.
  GoRoute get goRoute {
    return GoRoute(path: location, redirect: redirect, builder: builder, routes: routes.map((r) => r.goRoute).toList());
  }
}
