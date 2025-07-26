import 'package:flutter/material.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

void main() async {
  configureGetIt();
  await getIt<AppRouter>().init();
  runApp(const App());
}
