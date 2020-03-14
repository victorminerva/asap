import 'package:asap/components/dropdownicon.dart';
import 'package:asap/pages/phone.dart';
import 'package:asap/utils/navigator.dart';
import 'package:flutter/material.dart';

var routes = <String, WidgetBuilder> {
  "/phone": (BuildContext context) => PhonePage()
};

class IntroPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return IntroPageState();
  }
}

class IntroPageState extends State<IntroPage> {
  final PageController controller = new PageController();
  int currentPage = 0;
  bool lastPage = false;

  String dropdownValue = 'One';
  String phoneNumber;
  String phoneIsoCode;

  void onPhoneNumberChange(String number, String internationalPhoneNumber, String isoCode) {
    setState(() {
      phoneNumber = number;
      phoneIsoCode = isoCode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 7,
            child: Container(
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
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  Expanded(
                    flex: 3,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 4,
                          child: Container(
                            child: Align(
                              alignment: Alignment.center,
                              child: DropDownIconFlagComponent(),
                            )
                          ),
                        ),
                        Expanded(
                          flex: 8,
                          child: Container(
                            padding: EdgeInsets.all(8),
                            child: TextField(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => PhonePage(),
                                  ));
                              },
                              autofocus: false,
                              keyboardType: TextInputType.numberWithOptions(),
                              style: TextStyle(
                                fontSize: 24
                              ),
                              decoration: InputDecoration(
                                hintText: "Insira seu nº de celular"
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Align(
                            child: FlatButton(
                              onPressed: () {
                                print('clicked');
                              },
                              child: Text("Ou conecte-se por outro meio",
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontFamily: 'BreeSerif',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18
                                ),
                              ),
                            )
                          ),
                        )
                      ],
                    )
                  ),
                ],
              )
            ),
          ),
        ],
      )
    );
  }
}