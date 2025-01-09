// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeatherResponseImpl _$$WeatherResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$WeatherResponseImpl(
      request: RequestInfo.fromJson(json['request'] as Map<String, dynamic>),
      location: Location.fromJson(json['location'] as Map<String, dynamic>),
      current: Current.fromJson(json['current'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$WeatherResponseImplToJson(
        _$WeatherResponseImpl instance) =>
    <String, dynamic>{
      'request': instance.request,
      'location': instance.location,
      'current': instance.current,
    };

_$RequestInfoImpl _$$RequestInfoImplFromJson(Map<String, dynamic> json) =>
    _$RequestInfoImpl(
      type: json['type'] as String,
      query: json['query'] as String,
      language: json['language'] as String,
      unit: json['unit'] as String,
    );

Map<String, dynamic> _$$RequestInfoImplToJson(_$RequestInfoImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'query': instance.query,
      'language': instance.language,
      'unit': instance.unit,
    };

_$LocationImpl _$$LocationImplFromJson(Map<String, dynamic> json) =>
    _$LocationImpl(
      name: json['name'] as String,
      country: json['country'] as String,
      region: json['region'] as String,
      lat: json['lat'] as String,
      lon: json['lon'] as String,
      timezoneId: json['timezone_id'] as String,
      localtime: json['localtime'] as String,
      localtimeEpoch: (json['localtime_epoch'] as num).toInt(),
      utcOffset: json['utc_offset'] as String,
    );

Map<String, dynamic> _$$LocationImplToJson(_$LocationImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'country': instance.country,
      'region': instance.region,
      'lat': instance.lat,
      'lon': instance.lon,
      'timezone_id': instance.timezoneId,
      'localtime': instance.localtime,
      'localtime_epoch': instance.localtimeEpoch,
      'utc_offset': instance.utcOffset,
    };

_$CurrentImpl _$$CurrentImplFromJson(Map<String, dynamic> json) =>
    _$CurrentImpl(
      observationTime: json['observation_time'] as String,
      temperature: (json['temperature'] as num).toInt(),
      weatherCode: (json['weather_code'] as num).toInt(),
      weatherIcons: (json['weather_icons'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      weatherDescriptions: (json['weather_descriptions'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      windSpeed: (json['wind_speed'] as num).toInt(),
      windDegree: (json['wind_degree'] as num).toInt(),
      windDir: json['wind_dir'] as String,
      pressure: (json['pressure'] as num).toInt(),
      precip: (json['precip'] as num).toInt(),
      humidity: (json['humidity'] as num).toInt(),
      cloudcover: (json['cloudcover'] as num).toInt(),
      feelslike: (json['feelslike'] as num).toInt(),
      uvIndex: (json['uv_index'] as num).toInt(),
      visibility: (json['visibility'] as num).toInt(),
      isDay: json['is_day'] as String,
    );

Map<String, dynamic> _$$CurrentImplToJson(_$CurrentImpl instance) =>
    <String, dynamic>{
      'observation_time': instance.observationTime,
      'temperature': instance.temperature,
      'weather_code': instance.weatherCode,
      'weather_icons': instance.weatherIcons,
      'weather_descriptions': instance.weatherDescriptions,
      'wind_speed': instance.windSpeed,
      'wind_degree': instance.windDegree,
      'wind_dir': instance.windDir,
      'pressure': instance.pressure,
      'precip': instance.precip,
      'humidity': instance.humidity,
      'cloudcover': instance.cloudcover,
      'feelslike': instance.feelslike,
      'uv_index': instance.uvIndex,
      'visibility': instance.visibility,
      'is_day': instance.isDay,
    };
