import 'package:asap/models/country.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DropDownIconFlagComponent extends StatefulWidget {
  
  @override
  State<StatefulWidget> createState() => _DropDownIconFlagComponent();
    
}
  
class _DropDownIconFlagComponent extends State<DropDownIconFlagComponent> {

  int _selectedCountry;
  List<Country> countries = [
    new Country(image: Image.asset('assets/images/brasil.png', height: 36, width: 36,), codeIso: 55),
    new Country(image: Image.asset('assets/images/alemanha.png', height: 36, width: 36,), codeIso: 1),
    new Country(image: Image.asset('assets/images/portugal.png', height: 36, width: 36,), codeIso: 2)
  ];

  @override
  void initState() {
    super.initState();
    _selectedCountry = countries[0].codeIso;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: DropdownButton(
        items: countries.map((Country country){
          return DropdownMenuItem(
            value: country.codeIso,
            child: Container(
              padding: EdgeInsets.all(5),
              alignment: Alignment.center,
              child: Row(
                children: <Widget>[
                  country.image,
                  Text(" +${country.codeIso}", 
                  style: TextStyle(
                      fontSize: 24
                    ),
                  ),
                ],
              ),
            ),
          );
        }).toList(), 
        onChanged: (int codeIso) {
          onCountryChanged(codeIso);
        },
        value: _selectedCountry,
        isExpanded: true,
        underline: SizedBox()
      ),
    );
  }

  void onCountryChanged(int codeIso) {
    setState(() {
      _selectedCountry = codeIso;
    });
  }
}