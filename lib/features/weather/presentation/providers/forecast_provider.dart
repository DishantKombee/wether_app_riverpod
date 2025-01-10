import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../core/constants/app_constants.dart';
import '../../../../core/services/location_service.dart';
import '../../domain/entities/weather.dart';
import '../../../weather/data/repositories/weather_repository_impl.dart';

part 'forecast_provider.g.dart';

@riverpod
class ForecastNotifier extends _$ForecastNotifier {
  @override
  Future<List<Weather>> build() async {
    state = const AsyncValue.loading();
    return _getCurrentLocationForecast();
  }

  Future<List<Weather>> _getCurrentLocationForecast() async {
    try {
      final position =
          await ref.read(locationServiceProvider).getCurrentPosition();
      final forecast = await ref
          .read(weatherRepositoryProvider)
          .getForecastByLocation(position.latitude, position.longitude);
      return forecast;
    } catch (e) {
      throw Exception('${AppConstants.failedToGetForecast}$e');
    }
  }

  Future<List<Weather>> getForecastForCity(String cityName) async {
    state = const AsyncValue.loading();
    try {
      final forecast =
          await ref.read(weatherRepositoryProvider).getForecast(cityName);
      state = AsyncValue.data(forecast);
      return forecast;
    } catch (e) {
      state = AsyncValue.error(e, StackTrace.current);
      rethrow;
    }
  }
}
