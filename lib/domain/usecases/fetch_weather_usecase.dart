import 'package:openweatherapp/core/abstractions/abstractions.dart';
import 'package:openweatherapp/domain/entities/entities.dart';
import 'package:openweatherapp/domain/repositories/repositories.dart';

class FetchWeatherUseCase
    implements BaseUseCase<CityWeather, FetchWeatherRequest> {
  final WeatherRepository weatherRepository;

  FetchWeatherUseCase(this.weatherRepository);

  @override
  Future<CityWeather> call({FetchWeatherRequest? parameters}) =>
      weatherRepository.fetchWeather(city: parameters!.city);
}
