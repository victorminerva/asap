import 'package:asap/pages/splash.dart';
import 'package:flutter/material.dart';

void main() => runApp(AsapApp());

class AsapApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
      routes: routes,
    );
  }
}