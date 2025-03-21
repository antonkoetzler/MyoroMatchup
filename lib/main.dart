import 'package:flutter/material.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await init();
  runApp(const App());
}
