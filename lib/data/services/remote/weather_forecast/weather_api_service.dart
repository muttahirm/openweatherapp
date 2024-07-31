import 'package:http/http.dart' as http;
import 'package:openweatherapp/core/constants/constants.dart';

class WeatherApiService {
  Future<http.Response> fetchWeather({required String city}) async {
    final url = Uri.parse('$baseUrl?q=$city&unit=metric&APPID=$weatherKey');
    final getResponse = await http.get(url);

    return getResponse;
  }
}
