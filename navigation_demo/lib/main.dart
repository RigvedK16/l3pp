import 'package:flutter/material.dart';
import 'package:navigation_demo/firstScreen.dart';
import 'package:navigation_demo/secondScreen.dart';
import 'package:navigation_demo/thirdScreen.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Navigation demo",
      initialRoute: '/',
      routes: {
        "/": (context) => FirstScreen(),
        "/second": (context) => SecondScreen(),
      },
    );
  }
}
