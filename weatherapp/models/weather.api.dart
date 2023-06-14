import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:ferme_final/weatherapp/models/weather.dart';

class WeatherApi {
  static Future<List<Weather>> getWeather(String city) async {
    print("yooooo aj");
    var uri = Uri.https(
      'weatherapi-com.p.rapidapi.com',
      'forecast.json',
      {"q": city, "days": "3"},
    );
    final response = await http.get(uri, headers: {
      'x-rapidapi-host': 'weatherapi-com.p.rapidapi.com',
      'x-rapidapi-key':
          'a72f5c4ffcmsh0205a180ce3eabbp1523e2jsn69dfd89ef06a' //TODO: add api key from https://rapidapi.com/weatherapi/api/weatherapi-com/
    });
    Map data = jsonDecode(response.body);
    List _temp = [];
    for (var i in data['forecast']['forecastday']) {
      _temp.add(i);
    }
    return Weather.weatherFromSnapshot(_temp);
  }
}
