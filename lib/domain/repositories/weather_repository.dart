import 'package:openweatherapp/core/abstractions/abstractions.dart';
import 'package:openweatherapp/domain/entities/entities.dart';

abstract class WeatherRepository extends BaseRepository {
  Future<CityWeather> fetchWeather({
    required String city,
  });
}
