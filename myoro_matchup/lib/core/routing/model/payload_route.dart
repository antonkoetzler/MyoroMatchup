import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

/// Abstract class representing a route that requires a payload to be passed to utilize.
abstract class PayloadRoute<T> extends GoRoute {
  PayloadRoute({required String path, required Widget Function(BuildContext context, T payload) builder})
    : super(path: path, builder: (context, state) => builder(context, state.extra as T));

  void push(T payload) {
    navigatorKey.currentContext?.push(path, extra: payload);
  }
}
