import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather.freezed.dart';

@freezed
class Weather with _$Weather {
  const factory Weather({
    required String cityName,
    required double temperature,
    required double feelsLike,
    required int humidity,
    required double windSpeed,
    required String description,
    required String icon,
    required DateTime timestamp,
    required int visibility,
    required int pressure,
    required int cloudCover,
    required int weatherCode,
    required String windDir,
    required int windDegree,
    required int uvIndex,
    required double precipitation,
  }) = _Weather;
}
