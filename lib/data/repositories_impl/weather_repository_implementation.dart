import 'dart:convert';
import 'package:injectable/injectable.dart';
import 'package:openweatherapp/data/services/remote/remote.dart';
import 'package:openweatherapp/domain/entities/entities.dart';
import 'package:openweatherapp/domain/repositories/repositories.dart';

@LazySingleton(as: WeatherRepository)
class WeatherRepositoryImpl implements WeatherRepository {
  final WeatherApiService _weatherApiService;

  WeatherRepositoryImpl(this._weatherApiService);

  @override
  Future<void> init() {
    throw UnimplementedError();
  }

  @override
  Future<CityWeather> fetchWeather({required String city}) async {
    final httpResponse = await _weatherApiService.fetchWeather(city: city);
    var body = httpResponse.body;
    Map<String, dynamic> myMap = jsonDecode(body) as Map<String, dynamic>;
    if (myMap['cod'] is int) {
      String code = "${myMap['cod']}";
      int message = 0;
      final newBody = '{"cod": "$code","message": $message}';
      body = newBody;
    }

    CityWeather weatherResponse =
        CityWeather.fromJson(jsonDecode(body) as Map<String, dynamic>);

    return weatherResponse;
  }
}
