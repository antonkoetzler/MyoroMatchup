import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

/// Abstract class representing a route.
abstract class Route extends GoRoute {
  Route({required super.path, required Widget child}) : super(builder: (_, _) => child);

  /// Pushes the route.
  void push() {
    navigatorKey.currentContext?.push(path);
  }
}
