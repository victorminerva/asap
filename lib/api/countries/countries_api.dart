import 'dart:async';
import 'package:http/http.dart' as http;

const baseUrl = 'https://restcountries.eu/rest/v2';

class CountriesAPI {
  static Future<http.Response> retrieveAll() {
    var url = baseUrl + "/all";
    return http.get(url);
  }
}