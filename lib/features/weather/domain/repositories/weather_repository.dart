import '../entities/weather.dart';

abstract class WeatherRepository {
  /// Get current weather for the given [cityName]
  Future<Weather> getCurrentWeather(String cityName);

  /// Get current weather for the current location
  Future<Weather> getCurrentWeatherByLocation(double lat, double lon);

  /// Get 5-day forecast for the given [cityName]
  Future<List<Weather>> getForecast(String cityName);

  /// Get 5-day forecast for the current location
  Future<List<Weather>> getForecastByLocation(double lat, double lon);
}
