import 'package:flutter/material.dart';

class NavigatorUtil {

  static void goToHome(BuildContext context) => Navigator.pushNamed(context, "/home");
  static void goToIntro(BuildContext context) => Navigator.pushNamed(context, "/intro");
  static void goToPhone(BuildContext context) => Navigator.pushNamed(context, "/phone");
}