import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  runApp(const App());
}

final class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MyoroMaterialApp(title: 'MyoroMatchup', home: MyoroScreen(body: Text('Hello, World!')));
  }
}
