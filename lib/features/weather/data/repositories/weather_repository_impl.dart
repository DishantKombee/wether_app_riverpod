import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../core/api/api_client.dart';
import '../../../../core/constants/app_constants.dart';
import '../../domain/entities/weather.dart';
import '../../domain/repositories/weather_repository.dart';
import '../models/weather_model.dart';

part 'weather_repository_impl.g.dart';

class WeatherRepositoryImpl implements WeatherRepository {
  final ApiClient _apiClient;

  WeatherRepositoryImpl(this._apiClient);

  @override
  Future<Weather> getCurrentWeather(String cityName) async {
    final response = await _apiClient.get(
      AppConstants.weatherEndpoint,
      queryParameters: {
        AppConstants.accessKey: AppConstants.apiKey,
        AppConstants.query: cityName,
      },
    );
    final weatherResponse = WeatherResponse.fromJson(response.data);
    return weatherResponse.toDomain();
  }

  @override
  Future<Weather> getCurrentWeatherByLocation(double lat, double lon) async {
    final response = await _apiClient.get(
      AppConstants.weatherEndpoint,
      queryParameters: {
        AppConstants.accessKey: AppConstants.apiKey,
        AppConstants.query: '$lat,$lon',
      },
    );
    final weatherResponse = WeatherResponse.fromJson(response.data);
    return weatherResponse.toDomain();
  }

  @override
  Future<List<Weather>> getForecast(String cityName) async {
    // Weatherstack API requires premium subscription for forecast
    // For now, we'll return current weather as a single-item list
    final weather = await getCurrentWeather(cityName);
    return [weather];
  }

  @override
  Future<List<Weather>> getForecastByLocation(double lat, double lon) async {
    // Weatherstack API requires premium subscription for forecast
    // For now, we'll return current weather as a single-item list
    final weather = await getCurrentWeatherByLocation(lat, lon);
    return [weather];
  }
}

@riverpod
WeatherRepository weatherRepository(WeatherRepositoryRef ref) {
  final apiClient = ref.watch(apiClientProvider);
  return WeatherRepositoryImpl(apiClient);
}
