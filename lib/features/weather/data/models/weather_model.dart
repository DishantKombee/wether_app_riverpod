import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/weather.dart';

part 'weather_model.freezed.dart';
part 'weather_model.g.dart';

@freezed
class WeatherResponse with _$WeatherResponse {
  const factory WeatherResponse({
    required RequestInfo request,
    required Location location,
    required Current current,
  }) = _WeatherResponse;

  factory WeatherResponse.fromJson(Map<String, dynamic> json) =>
      _$WeatherResponseFromJson(json);
}

@freezed
class RequestInfo with _$RequestInfo {
  const factory RequestInfo({
    required String type,
    required String query,
    required String language,
    required String unit,
  }) = _RequestInfo;

  factory RequestInfo.fromJson(Map<String, dynamic> json) =>
      _$RequestInfoFromJson(json);
}

@freezed
class Location with _$Location {
  const factory Location({
    required String name,
    required String country,
    required String region,
    required String lat,
    required String lon,
    @JsonKey(name: 'timezone_id') required String timezoneId,
    required String localtime,
    @JsonKey(name: 'localtime_epoch') required int localtimeEpoch,
    @JsonKey(name: 'utc_offset') required String utcOffset,
  }) = _Location;

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);
}

@freezed
class Current with _$Current {
  const factory Current({
    @JsonKey(name: 'observation_time') required String observationTime,
    required int temperature,
    @JsonKey(name: 'weather_code') required int weatherCode,
    @JsonKey(name: 'weather_icons') required List<String> weatherIcons,
    @JsonKey(name: 'weather_descriptions')
    required List<String> weatherDescriptions,
    @JsonKey(name: 'wind_speed') required int windSpeed,
    @JsonKey(name: 'wind_degree') required int windDegree,
    @JsonKey(name: 'wind_dir') required String windDir,
    required int pressure,
    required int precip,
    required int humidity,
    required int cloudcover,
    required int feelslike,
    @JsonKey(name: 'uv_index') required int uvIndex,
    required int visibility,
    @JsonKey(name: 'is_day') required String isDay,
  }) = _Current;

  factory Current.fromJson(Map<String, dynamic> json) =>
      _$CurrentFromJson(json);
}

extension WeatherResponseX on WeatherResponse {
  Weather toDomain() {
    return Weather(
      cityName: '${location.name}, ${location.country}',
      temperature: current.temperature.toDouble(),
      feelsLike: current.feelslike.toDouble(),
      humidity: current.humidity,
      windSpeed: current.windSpeed.toDouble(),
      description: current.weatherDescriptions.first,
      icon: current.weatherIcons.first,
      timestamp:
          DateTime.fromMillisecondsSinceEpoch(location.localtimeEpoch * 1000),
      visibility: current.visibility,
      pressure: current.pressure,
      cloudCover: current.cloudcover,
      weatherCode: current.weatherCode,
      windDir: current.windDir,
      windDegree: current.windDegree,
      uvIndex: current.uvIndex,
      precipitation: current.precip.toDouble(),
    );
  }
}
