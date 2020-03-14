import 'dart:async';

import 'package:asap/pages/intro.dart';
import 'package:asap/utils/navigator.dart';
import 'package:flutter/material.dart';

var routes = <String, WidgetBuilder> {
  "/intro": (BuildContext context) => IntroPage(),
};

class SplashPage extends StatefulWidget {
  
  @override
  State<StatefulWidget> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () => NavigatorUtil.goToIntro(context));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment(0.26, 0.02),
              child: Icon(
                Icons.settings,
                size: 60,
                color: Color(0xffBCA000),
              ),
            ),
            Align(
              child: Text(
                  "Asap", 
                  style: TextStyle(
                    fontFamily:'BreeSerif', 
                    fontSize: 48,
                    fontWeight: FontWeight.w500),
                ),
            ),
          ],
        ),
      )
    );
  }
}