import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SmsPhonePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SmsPhoneState();
 
}

class _SmsPhoneState extends State<SmsPhonePage> {
  Timer _timer;
  int seconds;
  String phoneNumber;

  @override
  void initState() {
    super.initState();
    seconds = 60;
    startTimer();
  }

  String constructTime(int seconds) {
    int second = seconds % 60;
    return "0:" + formatTime(second);
  }

  String formatTime(int timeNum) {
    return timeNum < 10 ? "0" + timeNum.toString() : timeNum.toString();
  }

  void startTimer() {
    const period = const Duration(seconds: 1);
    _timer = Timer.periodic(period, (timer) {
      setState(() {
        seconds--;
    });
    if (seconds == 0) {
      cancelTimer();
    }
    });
  }

  void cancelTimer() {
    if (_timer != null) {
    _timer.cancel();
    _timer = null;
    }
  }

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: IconTheme.of(context),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: Container(
                padding: EdgeInsets.all(8),
                child:  Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Insira o código de 6 dígitos enviado para $phoneNumber",
                    style: TextStyle(
                      fontFamily: 'BreeSerif',
                      fontSize: 24
                    ),
                  ),
                ),
              )
            ),
            Expanded(
              flex: 0,
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 8,
                    child: Container(
                      padding: EdgeInsets.all(8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Expanded(
                            flex: 2,
                            child: Container(
                              padding: EdgeInsets.all(3),
                              child:  TextField(
                                textAlign: TextAlign.center,
                                autofocus: true,
                                maxLength: 1,
                                buildCounter: (BuildContext context, { int currentLength, int maxLength, bool isFocused }) => null,
                                keyboardType: TextInputType.number,
                                style: TextStyle(
                                  fontSize: 24
                                ),
                                decoration: InputDecoration(
                                  border: OutlineInputBorder()
                                ),
                              ),
                            )
                          ),
                          Expanded(
                            flex: 2,
                            child: Container(
                              padding: EdgeInsets.all(3),
                              child:  TextField(
                                textAlign: TextAlign.center,
                                autofocus: true,
                                maxLength: 1,
                                buildCounter: (BuildContext context, { int currentLength, int maxLength, bool isFocused }) => null,
                                keyboardType: TextInputType.number,
                                style: TextStyle(
                                  fontSize: 24
                                ),
                                decoration: InputDecoration(
                                  border: OutlineInputBorder()
                                ),
                              ),
                            )
                          ),
                          Expanded(
                            flex: 2,
                            child: Container(
                              padding: EdgeInsets.all(3),
                              child:  TextField(
                                textAlign: TextAlign.center,
                                autofocus: true,
                                maxLength: 1,
                                buildCounter: (BuildContext context, { int currentLength, int maxLength, bool isFocused }) => null,
                                keyboardType: TextInputType.number,
                                style: TextStyle(
                                  fontSize: 24
                                ),
                                decoration: InputDecoration(
                                  border: OutlineInputBorder()
                                ),
                              ),
                            )
                          ),
                          Expanded(
                            flex: 2,
                            child: Container(
                              padding: EdgeInsets.all(3),
                              child:  TextField(
                                textAlign: TextAlign.center,
                                autofocus: true,
                                maxLength: 1,
                                buildCounter: (BuildContext context, { int currentLength, int maxLength, bool isFocused }) => null,
                                keyboardType: TextInputType.number,
                                style: TextStyle(
                                  fontSize: 24
                                ),
                                decoration: InputDecoration(
                                  border: OutlineInputBorder()
                                ),
                              ),
                            )
                          ),
                          Expanded(
                            flex: 2,
                            child: Container(
                              padding: EdgeInsets.all(3),
                              child:  TextField(
                                textAlign: TextAlign.center,
                                autofocus: true,
                                maxLength: 1,
                                buildCounter: (BuildContext context, { int currentLength, int maxLength, bool isFocused }) => null,
                                keyboardType: TextInputType.number,
                                style: TextStyle(
                                  fontSize: 24
                                ),
                                decoration: InputDecoration(
                                  border: OutlineInputBorder()
                                ),
                              ),
                            )
                          ),
                          Expanded(
                            flex: 2,
                            child: Container(
                              padding: EdgeInsets.all(3),
                              child:  TextField(
                                textAlign: TextAlign.center,
                                autofocus: true,
                                maxLength: 1,
                                buildCounter: (BuildContext context, { int currentLength, int maxLength, bool isFocused }) => null,
                                keyboardType: TextInputType.number,
                                style: TextStyle(
                                  fontSize: 24
                                ),
                                decoration: InputDecoration(
                                  border: OutlineInputBorder()
                                ),
                              ),
                            )
                          ),
                        ],
                      )
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 6,
              child: (Container()),
            ),
            Expanded(
              flex: 0,
              child: Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.all(8),
                child: SizedBox(
                    width: 280,
                    height: 60,
                    child: Text(
                      "Enviar novamente o código em " + constructTime(seconds),
                      style: TextStyle(
                        fontFamily: 'BreeSerif',
                      ),
                    ),
                  ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_forward),
        onPressed: () => {},
        backgroundColor: Color(0xffF0C808),
      ),
    );
  }
}