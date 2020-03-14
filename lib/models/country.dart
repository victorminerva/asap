import 'package:flutter/material.dart';

class Country {
  
  Image image;
  int codeIso;

  Country({this.image, this.codeIso});

  Country.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    codeIso = json['codeIso'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['image'] = this.image;
    data['codeIso'] = this.codeIso;
    return data;
  }
}