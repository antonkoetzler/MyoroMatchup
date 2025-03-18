import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

final class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: 'MyoroMatchup', home: Scaffold(body: Text('Hello, World!')));
  }
}
