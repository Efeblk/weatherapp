import 'dart:convert';

import 'package:http/http.dart' as http;
import 'weatherModel.dart';

class weatherData {
  Future<weather> getData(var latitude, var longitude) async {
    var uriCall = Uri.parse(
        'http://api.weatherapi.com/v1/current.json?key=0cccf60edd2a416886a05440231301&q=$latitude,$longitude&aqi=no');
    var response = await http.get(uriCall);
    var body = jsonDecode(response.body);
    return weather.fromJson(body);
  }
}
