import 'package:asap/components/dropdownicon.dart';
import 'package:asap/utils/navigator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PhonePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _PhoneState();
 
}

class _PhoneState extends State<PhonePage> {
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
              child: Container(
                padding: EdgeInsets.all(8),
                child:  Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Digite o nº de seu celular",
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
                        autofocus: true,
                        keyboardType: TextInputType.number,
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
                      "Ao continuar, você pode receber um SMS para confirmação. Pode haver cobrança de taxas de envio de mensagens e dados.",
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
        onPressed: () => NavigatorUtil.goToSmsPhone(context),
        backgroundColor: Color(0xffF0C808),
      ),
    );
  }
}