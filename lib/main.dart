import 'package:flutter/material.dart';
import 'Introswipe.dart';
import 'login.dart';

void main() => runApp(Intro());

class Intro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(routes: {
      "/": (context) => MyApp(),
      "/login": (context) => LoginScreen(),
      "/homepage": (context) => MyHomePage(),
    });
  }
}
