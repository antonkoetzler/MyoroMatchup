import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// [GlobalKey] of [AppRouter]'s [GoRouter] of the application.
///
/// Used to be able to execute functions that require [BuildContext]s without needing to
/// provide a [BuildContext], as we utilize the current [BuildContext] of [navigatorKey].
final navigatorKey = GlobalKey<NavigatorState>();
