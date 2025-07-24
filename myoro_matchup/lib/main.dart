import 'package:flutter/material.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

void main() async {
  configureGetIt();
  getIt<AppRouter>().init(isLoggedIn: false); // TODO
  runApp(const App());
}
