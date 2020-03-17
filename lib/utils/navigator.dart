import 'package:asap/pages/intro.dart';
import 'package:asap/pages/phone.dart';
import 'package:asap/pages/sms_code.dart';
import 'package:flutter/material.dart';

class NavigatorUtil {

  static void goToIntro(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => IntroPage()));
  static void goToPhone(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => PhonePage()));
  static void goToSmsPhone(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => SmsPhonePage()));
}