import 'package:flutter/material.dart';
import 'Introswipe.dart';
import 'login.dart';
import 'dashboard.dart';

void main() => runApp(Intro());

class Intro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(routes: {
      "/": (context) => dash(),
      "/login": (context) => LoginScreen(),
      "/homepage": (context) => MyHomePage(),
    });
  }
}
