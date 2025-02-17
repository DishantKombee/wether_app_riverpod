import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../core/constants/app_constants.dart';
import '../../../../core/services/location_service.dart';
import '../../domain/entities/weather.dart';
import '../../../weather/data/repositories/weather_repository_impl.dart';

part 'weather_provider.g.dart';

@riverpod
class WeatherNotifier extends _$WeatherNotifier {
  @override
  Future<Weather> build() async {
    state = const AsyncValue.loading();
    return _getCurrentLocationWeather();
  }

  Future<Weather> _getCurrentLocationWeather() async {
    try {
      final position =
          await ref.read(locationServiceProvider).getCurrentPosition();
      final weather = await ref
          .read(weatherRepositoryProvider)
          .getCurrentWeatherByLocation(position.latitude, position.longitude);
      return weather;
    } catch (e) {
      throw Exception('${AppConstants.failedToGetWeather}$e');
    }
  }

  Future<Weather> getWeatherForCity(String cityName) async {
    state = const AsyncValue.loading();
    try {
      final weather =
          await ref.read(weatherRepositoryProvider).getCurrentWeather(cityName);
      state = AsyncValue.data(weather);
      return weather;
    } catch (e) {
      state = AsyncValue.error(e, StackTrace.current);
      rethrow;
    }
  }
}
