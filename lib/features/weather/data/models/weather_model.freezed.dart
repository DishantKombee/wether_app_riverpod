// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WeatherResponse _$WeatherResponseFromJson(Map<String, dynamic> json) {
  return _WeatherResponse.fromJson(json);
}

/// @nodoc
mixin _$WeatherResponse {
  RequestInfo get request => throw _privateConstructorUsedError;
  Location get location => throw _privateConstructorUsedError;
  Current get current => throw _privateConstructorUsedError;

  /// Serializes this WeatherResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WeatherResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WeatherResponseCopyWith<WeatherResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherResponseCopyWith<$Res> {
  factory $WeatherResponseCopyWith(
          WeatherResponse value, $Res Function(WeatherResponse) then) =
      _$WeatherResponseCopyWithImpl<$Res, WeatherResponse>;
  @useResult
  $Res call({RequestInfo request, Location location, Current current});

  $RequestInfoCopyWith<$Res> get request;
  $LocationCopyWith<$Res> get location;
  $CurrentCopyWith<$Res> get current;
}

/// @nodoc
class _$WeatherResponseCopyWithImpl<$Res, $Val extends WeatherResponse>
    implements $WeatherResponseCopyWith<$Res> {
  _$WeatherResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WeatherResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
    Object? location = null,
    Object? current = null,
  }) {
    return _then(_value.copyWith(
      request: null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as RequestInfo,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location,
      current: null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as Current,
    ) as $Val);
  }

  /// Create a copy of WeatherResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RequestInfoCopyWith<$Res> get request {
    return $RequestInfoCopyWith<$Res>(_value.request, (value) {
      return _then(_value.copyWith(request: value) as $Val);
    });
  }

  /// Create a copy of WeatherResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationCopyWith<$Res> get location {
    return $LocationCopyWith<$Res>(_value.location, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }

  /// Create a copy of WeatherResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CurrentCopyWith<$Res> get current {
    return $CurrentCopyWith<$Res>(_value.current, (value) {
      return _then(_value.copyWith(current: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WeatherResponseImplCopyWith<$Res>
    implements $WeatherResponseCopyWith<$Res> {
  factory _$$WeatherResponseImplCopyWith(_$WeatherResponseImpl value,
          $Res Function(_$WeatherResponseImpl) then) =
      __$$WeatherResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RequestInfo request, Location location, Current current});

  @override
  $RequestInfoCopyWith<$Res> get request;
  @override
  $LocationCopyWith<$Res> get location;
  @override
  $CurrentCopyWith<$Res> get current;
}

/// @nodoc
class __$$WeatherResponseImplCopyWithImpl<$Res>
    extends _$WeatherResponseCopyWithImpl<$Res, _$WeatherResponseImpl>
    implements _$$WeatherResponseImplCopyWith<$Res> {
  __$$WeatherResponseImplCopyWithImpl(
      _$WeatherResponseImpl _value, $Res Function(_$WeatherResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of WeatherResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
    Object? location = null,
    Object? current = null,
  }) {
    return _then(_$WeatherResponseImpl(
      request: null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as RequestInfo,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location,
      current: null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as Current,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeatherResponseImpl implements _WeatherResponse {
  const _$WeatherResponseImpl(
      {required this.request, required this.location, required this.current});

  factory _$WeatherResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeatherResponseImplFromJson(json);

  @override
  final RequestInfo request;
  @override
  final Location location;
  @override
  final Current current;

  @override
  String toString() {
    return 'WeatherResponse(request: $request, location: $location, current: $current)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherResponseImpl &&
            (identical(other.request, request) || other.request == request) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.current, current) || other.current == current));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, request, location, current);

  /// Create a copy of WeatherResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherResponseImplCopyWith<_$WeatherResponseImpl> get copyWith =>
      __$$WeatherResponseImplCopyWithImpl<_$WeatherResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherResponseImplToJson(
      this,
    );
  }
}

abstract class _WeatherResponse implements WeatherResponse {
  const factory _WeatherResponse(
      {required final RequestInfo request,
      required final Location location,
      required final Current current}) = _$WeatherResponseImpl;

  factory _WeatherResponse.fromJson(Map<String, dynamic> json) =
      _$WeatherResponseImpl.fromJson;

  @override
  RequestInfo get request;
  @override
  Location get location;
  @override
  Current get current;

  /// Create a copy of WeatherResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WeatherResponseImplCopyWith<_$WeatherResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RequestInfo _$RequestInfoFromJson(Map<String, dynamic> json) {
  return _RequestInfo.fromJson(json);
}

/// @nodoc
mixin _$RequestInfo {
  String get type => throw _privateConstructorUsedError;
  String get query => throw _privateConstructorUsedError;
  String get language => throw _privateConstructorUsedError;
  String get unit => throw _privateConstructorUsedError;

  /// Serializes this RequestInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RequestInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RequestInfoCopyWith<RequestInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestInfoCopyWith<$Res> {
  factory $RequestInfoCopyWith(
          RequestInfo value, $Res Function(RequestInfo) then) =
      _$RequestInfoCopyWithImpl<$Res, RequestInfo>;
  @useResult
  $Res call({String type, String query, String language, String unit});
}

/// @nodoc
class _$RequestInfoCopyWithImpl<$Res, $Val extends RequestInfo>
    implements $RequestInfoCopyWith<$Res> {
  _$RequestInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequestInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? query = null,
    Object? language = null,
    Object? unit = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestInfoImplCopyWith<$Res>
    implements $RequestInfoCopyWith<$Res> {
  factory _$$RequestInfoImplCopyWith(
          _$RequestInfoImpl value, $Res Function(_$RequestInfoImpl) then) =
      __$$RequestInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String type, String query, String language, String unit});
}

/// @nodoc
class __$$RequestInfoImplCopyWithImpl<$Res>
    extends _$RequestInfoCopyWithImpl<$Res, _$RequestInfoImpl>
    implements _$$RequestInfoImplCopyWith<$Res> {
  __$$RequestInfoImplCopyWithImpl(
      _$RequestInfoImpl _value, $Res Function(_$RequestInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? query = null,
    Object? language = null,
    Object? unit = null,
  }) {
    return _then(_$RequestInfoImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestInfoImpl implements _RequestInfo {
  const _$RequestInfoImpl(
      {required this.type,
      required this.query,
      required this.language,
      required this.unit});

  factory _$RequestInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestInfoImplFromJson(json);

  @override
  final String type;
  @override
  final String query;
  @override
  final String language;
  @override
  final String unit;

  @override
  String toString() {
    return 'RequestInfo(type: $type, query: $query, language: $language, unit: $unit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestInfoImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.unit, unit) || other.unit == unit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, query, language, unit);

  /// Create a copy of RequestInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestInfoImplCopyWith<_$RequestInfoImpl> get copyWith =>
      __$$RequestInfoImplCopyWithImpl<_$RequestInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestInfoImplToJson(
      this,
    );
  }
}

abstract class _RequestInfo implements RequestInfo {
  const factory _RequestInfo(
      {required final String type,
      required final String query,
      required final String language,
      required final String unit}) = _$RequestInfoImpl;

  factory _RequestInfo.fromJson(Map<String, dynamic> json) =
      _$RequestInfoImpl.fromJson;

  @override
  String get type;
  @override
  String get query;
  @override
  String get language;
  @override
  String get unit;

  /// Create a copy of RequestInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestInfoImplCopyWith<_$RequestInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Location _$LocationFromJson(Map<String, dynamic> json) {
  return _Location.fromJson(json);
}

/// @nodoc
mixin _$Location {
  String get name => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  String get region => throw _privateConstructorUsedError;
  String get lat => throw _privateConstructorUsedError;
  String get lon => throw _privateConstructorUsedError;
  @JsonKey(name: 'timezone_id')
  String get timezoneId => throw _privateConstructorUsedError;
  String get localtime => throw _privateConstructorUsedError;
  @JsonKey(name: 'localtime_epoch')
  int get localtimeEpoch => throw _privateConstructorUsedError;
  @JsonKey(name: 'utc_offset')
  String get utcOffset => throw _privateConstructorUsedError;

  /// Serializes this Location to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Location
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LocationCopyWith<Location> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationCopyWith<$Res> {
  factory $LocationCopyWith(Location value, $Res Function(Location) then) =
      _$LocationCopyWithImpl<$Res, Location>;
  @useResult
  $Res call(
      {String name,
      String country,
      String region,
      String lat,
      String lon,
      @JsonKey(name: 'timezone_id') String timezoneId,
      String localtime,
      @JsonKey(name: 'localtime_epoch') int localtimeEpoch,
      @JsonKey(name: 'utc_offset') String utcOffset});
}

/// @nodoc
class _$LocationCopyWithImpl<$Res, $Val extends Location>
    implements $LocationCopyWith<$Res> {
  _$LocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Location
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? country = null,
    Object? region = null,
    Object? lat = null,
    Object? lon = null,
    Object? timezoneId = null,
    Object? localtime = null,
    Object? localtimeEpoch = null,
    Object? utcOffset = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      region: null == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String,
      lon: null == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as String,
      timezoneId: null == timezoneId
          ? _value.timezoneId
          : timezoneId // ignore: cast_nullable_to_non_nullable
              as String,
      localtime: null == localtime
          ? _value.localtime
          : localtime // ignore: cast_nullable_to_non_nullable
              as String,
      localtimeEpoch: null == localtimeEpoch
          ? _value.localtimeEpoch
          : localtimeEpoch // ignore: cast_nullable_to_non_nullable
              as int,
      utcOffset: null == utcOffset
          ? _value.utcOffset
          : utcOffset // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocationImplCopyWith<$Res>
    implements $LocationCopyWith<$Res> {
  factory _$$LocationImplCopyWith(
          _$LocationImpl value, $Res Function(_$LocationImpl) then) =
      __$$LocationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String country,
      String region,
      String lat,
      String lon,
      @JsonKey(name: 'timezone_id') String timezoneId,
      String localtime,
      @JsonKey(name: 'localtime_epoch') int localtimeEpoch,
      @JsonKey(name: 'utc_offset') String utcOffset});
}

/// @nodoc
class __$$LocationImplCopyWithImpl<$Res>
    extends _$LocationCopyWithImpl<$Res, _$LocationImpl>
    implements _$$LocationImplCopyWith<$Res> {
  __$$LocationImplCopyWithImpl(
      _$LocationImpl _value, $Res Function(_$LocationImpl) _then)
      : super(_value, _then);

  /// Create a copy of Location
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? country = null,
    Object? region = null,
    Object? lat = null,
    Object? lon = null,
    Object? timezoneId = null,
    Object? localtime = null,
    Object? localtimeEpoch = null,
    Object? utcOffset = null,
  }) {
    return _then(_$LocationImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      region: null == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String,
      lon: null == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as String,
      timezoneId: null == timezoneId
          ? _value.timezoneId
          : timezoneId // ignore: cast_nullable_to_non_nullable
              as String,
      localtime: null == localtime
          ? _value.localtime
          : localtime // ignore: cast_nullable_to_non_nullable
              as String,
      localtimeEpoch: null == localtimeEpoch
          ? _value.localtimeEpoch
          : localtimeEpoch // ignore: cast_nullable_to_non_nullable
              as int,
      utcOffset: null == utcOffset
          ? _value.utcOffset
          : utcOffset // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocationImpl implements _Location {
  const _$LocationImpl(
      {required this.name,
      required this.country,
      required this.region,
      required this.lat,
      required this.lon,
      @JsonKey(name: 'timezone_id') required this.timezoneId,
      required this.localtime,
      @JsonKey(name: 'localtime_epoch') required this.localtimeEpoch,
      @JsonKey(name: 'utc_offset') required this.utcOffset});

  factory _$LocationImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocationImplFromJson(json);

  @override
  final String name;
  @override
  final String country;
  @override
  final String region;
  @override
  final String lat;
  @override
  final String lon;
  @override
  @JsonKey(name: 'timezone_id')
  final String timezoneId;
  @override
  final String localtime;
  @override
  @JsonKey(name: 'localtime_epoch')
  final int localtimeEpoch;
  @override
  @JsonKey(name: 'utc_offset')
  final String utcOffset;

  @override
  String toString() {
    return 'Location(name: $name, country: $country, region: $region, lat: $lat, lon: $lon, timezoneId: $timezoneId, localtime: $localtime, localtimeEpoch: $localtimeEpoch, utcOffset: $utcOffset)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.region, region) || other.region == region) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lon, lon) || other.lon == lon) &&
            (identical(other.timezoneId, timezoneId) ||
                other.timezoneId == timezoneId) &&
            (identical(other.localtime, localtime) ||
                other.localtime == localtime) &&
            (identical(other.localtimeEpoch, localtimeEpoch) ||
                other.localtimeEpoch == localtimeEpoch) &&
            (identical(other.utcOffset, utcOffset) ||
                other.utcOffset == utcOffset));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, country, region, lat, lon,
      timezoneId, localtime, localtimeEpoch, utcOffset);

  /// Create a copy of Location
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationImplCopyWith<_$LocationImpl> get copyWith =>
      __$$LocationImplCopyWithImpl<_$LocationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationImplToJson(
      this,
    );
  }
}

abstract class _Location implements Location {
  const factory _Location(
          {required final String name,
          required final String country,
          required final String region,
          required final String lat,
          required final String lon,
          @JsonKey(name: 'timezone_id') required final String timezoneId,
          required final String localtime,
          @JsonKey(name: 'localtime_epoch') required final int localtimeEpoch,
          @JsonKey(name: 'utc_offset') required final String utcOffset}) =
      _$LocationImpl;

  factory _Location.fromJson(Map<String, dynamic> json) =
      _$LocationImpl.fromJson;

  @override
  String get name;
  @override
  String get country;
  @override
  String get region;
  @override
  String get lat;
  @override
  String get lon;
  @override
  @JsonKey(name: 'timezone_id')
  String get timezoneId;
  @override
  String get localtime;
  @override
  @JsonKey(name: 'localtime_epoch')
  int get localtimeEpoch;
  @override
  @JsonKey(name: 'utc_offset')
  String get utcOffset;

  /// Create a copy of Location
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocationImplCopyWith<_$LocationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Current _$CurrentFromJson(Map<String, dynamic> json) {
  return _Current.fromJson(json);
}

/// @nodoc
mixin _$Current {
  @JsonKey(name: 'observation_time')
  String get observationTime => throw _privateConstructorUsedError;
  int get temperature => throw _privateConstructorUsedError;
  @JsonKey(name: 'weather_code')
  int get weatherCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'weather_icons')
  List<String> get weatherIcons => throw _privateConstructorUsedError;
  @JsonKey(name: 'weather_descriptions')
  List<String> get weatherDescriptions => throw _privateConstructorUsedError;
  @JsonKey(name: 'wind_speed')
  int get windSpeed => throw _privateConstructorUsedError;
  @JsonKey(name: 'wind_degree')
  int get windDegree => throw _privateConstructorUsedError;
  @JsonKey(name: 'wind_dir')
  String get windDir => throw _privateConstructorUsedError;
  int get pressure => throw _privateConstructorUsedError;
  int get precip => throw _privateConstructorUsedError;
  int get humidity => throw _privateConstructorUsedError;
  int get cloudcover => throw _privateConstructorUsedError;
  int get feelslike => throw _privateConstructorUsedError;
  @JsonKey(name: 'uv_index')
  int get uvIndex => throw _privateConstructorUsedError;
  int get visibility => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_day')
  String get isDay => throw _privateConstructorUsedError;

  /// Serializes this Current to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Current
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CurrentCopyWith<Current> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentCopyWith<$Res> {
  factory $CurrentCopyWith(Current value, $Res Function(Current) then) =
      _$CurrentCopyWithImpl<$Res, Current>;
  @useResult
  $Res call(
      {@JsonKey(name: 'observation_time') String observationTime,
      int temperature,
      @JsonKey(name: 'weather_code') int weatherCode,
      @JsonKey(name: 'weather_icons') List<String> weatherIcons,
      @JsonKey(name: 'weather_descriptions') List<String> weatherDescriptions,
      @JsonKey(name: 'wind_speed') int windSpeed,
      @JsonKey(name: 'wind_degree') int windDegree,
      @JsonKey(name: 'wind_dir') String windDir,
      int pressure,
      int precip,
      int humidity,
      int cloudcover,
      int feelslike,
      @JsonKey(name: 'uv_index') int uvIndex,
      int visibility,
      @JsonKey(name: 'is_day') String isDay});
}

/// @nodoc
class _$CurrentCopyWithImpl<$Res, $Val extends Current>
    implements $CurrentCopyWith<$Res> {
  _$CurrentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Current
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? observationTime = null,
    Object? temperature = null,
    Object? weatherCode = null,
    Object? weatherIcons = null,
    Object? weatherDescriptions = null,
    Object? windSpeed = null,
    Object? windDegree = null,
    Object? windDir = null,
    Object? pressure = null,
    Object? precip = null,
    Object? humidity = null,
    Object? cloudcover = null,
    Object? feelslike = null,
    Object? uvIndex = null,
    Object? visibility = null,
    Object? isDay = null,
  }) {
    return _then(_value.copyWith(
      observationTime: null == observationTime
          ? _value.observationTime
          : observationTime // ignore: cast_nullable_to_non_nullable
              as String,
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as int,
      weatherCode: null == weatherCode
          ? _value.weatherCode
          : weatherCode // ignore: cast_nullable_to_non_nullable
              as int,
      weatherIcons: null == weatherIcons
          ? _value.weatherIcons
          : weatherIcons // ignore: cast_nullable_to_non_nullable
              as List<String>,
      weatherDescriptions: null == weatherDescriptions
          ? _value.weatherDescriptions
          : weatherDescriptions // ignore: cast_nullable_to_non_nullable
              as List<String>,
      windSpeed: null == windSpeed
          ? _value.windSpeed
          : windSpeed // ignore: cast_nullable_to_non_nullable
              as int,
      windDegree: null == windDegree
          ? _value.windDegree
          : windDegree // ignore: cast_nullable_to_non_nullable
              as int,
      windDir: null == windDir
          ? _value.windDir
          : windDir // ignore: cast_nullable_to_non_nullable
              as String,
      pressure: null == pressure
          ? _value.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as int,
      precip: null == precip
          ? _value.precip
          : precip // ignore: cast_nullable_to_non_nullable
              as int,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int,
      cloudcover: null == cloudcover
          ? _value.cloudcover
          : cloudcover // ignore: cast_nullable_to_non_nullable
              as int,
      feelslike: null == feelslike
          ? _value.feelslike
          : feelslike // ignore: cast_nullable_to_non_nullable
              as int,
      uvIndex: null == uvIndex
          ? _value.uvIndex
          : uvIndex // ignore: cast_nullable_to_non_nullable
              as int,
      visibility: null == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as int,
      isDay: null == isDay
          ? _value.isDay
          : isDay // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CurrentImplCopyWith<$Res> implements $CurrentCopyWith<$Res> {
  factory _$$CurrentImplCopyWith(
          _$CurrentImpl value, $Res Function(_$CurrentImpl) then) =
      __$$CurrentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'observation_time') String observationTime,
      int temperature,
      @JsonKey(name: 'weather_code') int weatherCode,
      @JsonKey(name: 'weather_icons') List<String> weatherIcons,
      @JsonKey(name: 'weather_descriptions') List<String> weatherDescriptions,
      @JsonKey(name: 'wind_speed') int windSpeed,
      @JsonKey(name: 'wind_degree') int windDegree,
      @JsonKey(name: 'wind_dir') String windDir,
      int pressure,
      int precip,
      int humidity,
      int cloudcover,
      int feelslike,
      @JsonKey(name: 'uv_index') int uvIndex,
      int visibility,
      @JsonKey(name: 'is_day') String isDay});
}

/// @nodoc
class __$$CurrentImplCopyWithImpl<$Res>
    extends _$CurrentCopyWithImpl<$Res, _$CurrentImpl>
    implements _$$CurrentImplCopyWith<$Res> {
  __$$CurrentImplCopyWithImpl(
      _$CurrentImpl _value, $Res Function(_$CurrentImpl) _then)
      : super(_value, _then);

  /// Create a copy of Current
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? observationTime = null,
    Object? temperature = null,
    Object? weatherCode = null,
    Object? weatherIcons = null,
    Object? weatherDescriptions = null,
    Object? windSpeed = null,
    Object? windDegree = null,
    Object? windDir = null,
    Object? pressure = null,
    Object? precip = null,
    Object? humidity = null,
    Object? cloudcover = null,
    Object? feelslike = null,
    Object? uvIndex = null,
    Object? visibility = null,
    Object? isDay = null,
  }) {
    return _then(_$CurrentImpl(
      observationTime: null == observationTime
          ? _value.observationTime
          : observationTime // ignore: cast_nullable_to_non_nullable
              as String,
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as int,
      weatherCode: null == weatherCode
          ? _value.weatherCode
          : weatherCode // ignore: cast_nullable_to_non_nullable
              as int,
      weatherIcons: null == weatherIcons
          ? _value._weatherIcons
          : weatherIcons // ignore: cast_nullable_to_non_nullable
              as List<String>,
      weatherDescriptions: null == weatherDescriptions
          ? _value._weatherDescriptions
          : weatherDescriptions // ignore: cast_nullable_to_non_nullable
              as List<String>,
      windSpeed: null == windSpeed
          ? _value.windSpeed
          : windSpeed // ignore: cast_nullable_to_non_nullable
              as int,
      windDegree: null == windDegree
          ? _value.windDegree
          : windDegree // ignore: cast_nullable_to_non_nullable
              as int,
      windDir: null == windDir
          ? _value.windDir
          : windDir // ignore: cast_nullable_to_non_nullable
              as String,
      pressure: null == pressure
          ? _value.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as int,
      precip: null == precip
          ? _value.precip
          : precip // ignore: cast_nullable_to_non_nullable
              as int,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int,
      cloudcover: null == cloudcover
          ? _value.cloudcover
          : cloudcover // ignore: cast_nullable_to_non_nullable
              as int,
      feelslike: null == feelslike
          ? _value.feelslike
          : feelslike // ignore: cast_nullable_to_non_nullable
              as int,
      uvIndex: null == uvIndex
          ? _value.uvIndex
          : uvIndex // ignore: cast_nullable_to_non_nullable
              as int,
      visibility: null == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as int,
      isDay: null == isDay
          ? _value.isDay
          : isDay // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CurrentImpl implements _Current {
  const _$CurrentImpl(
      {@JsonKey(name: 'observation_time') required this.observationTime,
      required this.temperature,
      @JsonKey(name: 'weather_code') required this.weatherCode,
      @JsonKey(name: 'weather_icons') required final List<String> weatherIcons,
      @JsonKey(name: 'weather_descriptions')
      required final List<String> weatherDescriptions,
      @JsonKey(name: 'wind_speed') required this.windSpeed,
      @JsonKey(name: 'wind_degree') required this.windDegree,
      @JsonKey(name: 'wind_dir') required this.windDir,
      required this.pressure,
      required this.precip,
      required this.humidity,
      required this.cloudcover,
      required this.feelslike,
      @JsonKey(name: 'uv_index') required this.uvIndex,
      required this.visibility,
      @JsonKey(name: 'is_day') required this.isDay})
      : _weatherIcons = weatherIcons,
        _weatherDescriptions = weatherDescriptions;

  factory _$CurrentImpl.fromJson(Map<String, dynamic> json) =>
      _$$CurrentImplFromJson(json);

  @override
  @JsonKey(name: 'observation_time')
  final String observationTime;
  @override
  final int temperature;
  @override
  @JsonKey(name: 'weather_code')
  final int weatherCode;
  final List<String> _weatherIcons;
  @override
  @JsonKey(name: 'weather_icons')
  List<String> get weatherIcons {
    if (_weatherIcons is EqualUnmodifiableListView) return _weatherIcons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weatherIcons);
  }

  final List<String> _weatherDescriptions;
  @override
  @JsonKey(name: 'weather_descriptions')
  List<String> get weatherDescriptions {
    if (_weatherDescriptions is EqualUnmodifiableListView)
      return _weatherDescriptions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weatherDescriptions);
  }

  @override
  @JsonKey(name: 'wind_speed')
  final int windSpeed;
  @override
  @JsonKey(name: 'wind_degree')
  final int windDegree;
  @override
  @JsonKey(name: 'wind_dir')
  final String windDir;
  @override
  final int pressure;
  @override
  final int precip;
  @override
  final int humidity;
  @override
  final int cloudcover;
  @override
  final int feelslike;
  @override
  @JsonKey(name: 'uv_index')
  final int uvIndex;
  @override
  final int visibility;
  @override
  @JsonKey(name: 'is_day')
  final String isDay;

  @override
  String toString() {
    return 'Current(observationTime: $observationTime, temperature: $temperature, weatherCode: $weatherCode, weatherIcons: $weatherIcons, weatherDescriptions: $weatherDescriptions, windSpeed: $windSpeed, windDegree: $windDegree, windDir: $windDir, pressure: $pressure, precip: $precip, humidity: $humidity, cloudcover: $cloudcover, feelslike: $feelslike, uvIndex: $uvIndex, visibility: $visibility, isDay: $isDay)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrentImpl &&
            (identical(other.observationTime, observationTime) ||
                other.observationTime == observationTime) &&
            (identical(other.temperature, temperature) ||
                other.temperature == temperature) &&
            (identical(other.weatherCode, weatherCode) ||
                other.weatherCode == weatherCode) &&
            const DeepCollectionEquality()
                .equals(other._weatherIcons, _weatherIcons) &&
            const DeepCollectionEquality()
                .equals(other._weatherDescriptions, _weatherDescriptions) &&
            (identical(other.windSpeed, windSpeed) ||
                other.windSpeed == windSpeed) &&
            (identical(other.windDegree, windDegree) ||
                other.windDegree == windDegree) &&
            (identical(other.windDir, windDir) || other.windDir == windDir) &&
            (identical(other.pressure, pressure) ||
                other.pressure == pressure) &&
            (identical(other.precip, precip) || other.precip == precip) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity) &&
            (identical(other.cloudcover, cloudcover) ||
                other.cloudcover == cloudcover) &&
            (identical(other.feelslike, feelslike) ||
                other.feelslike == feelslike) &&
            (identical(other.uvIndex, uvIndex) || other.uvIndex == uvIndex) &&
            (identical(other.visibility, visibility) ||
                other.visibility == visibility) &&
            (identical(other.isDay, isDay) || other.isDay == isDay));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      observationTime,
      temperature,
      weatherCode,
      const DeepCollectionEquality().hash(_weatherIcons),
      const DeepCollectionEquality().hash(_weatherDescriptions),
      windSpeed,
      windDegree,
      windDir,
      pressure,
      precip,
      humidity,
      cloudcover,
      feelslike,
      uvIndex,
      visibility,
      isDay);

  /// Create a copy of Current
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrentImplCopyWith<_$CurrentImpl> get copyWith =>
      __$$CurrentImplCopyWithImpl<_$CurrentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CurrentImplToJson(
      this,
    );
  }
}

abstract class _Current implements Current {
  const factory _Current(
      {@JsonKey(name: 'observation_time') required final String observationTime,
      required final int temperature,
      @JsonKey(name: 'weather_code') required final int weatherCode,
      @JsonKey(name: 'weather_icons') required final List<String> weatherIcons,
      @JsonKey(name: 'weather_descriptions')
      required final List<String> weatherDescriptions,
      @JsonKey(name: 'wind_speed') required final int windSpeed,
      @JsonKey(name: 'wind_degree') required final int windDegree,
      @JsonKey(name: 'wind_dir') required final String windDir,
      required final int pressure,
      required final int precip,
      required final int humidity,
      required final int cloudcover,
      required final int feelslike,
      @JsonKey(name: 'uv_index') required final int uvIndex,
      required final int visibility,
      @JsonKey(name: 'is_day') required final String isDay}) = _$CurrentImpl;

  factory _Current.fromJson(Map<String, dynamic> json) = _$CurrentImpl.fromJson;

  @override
  @JsonKey(name: 'observation_time')
  String get observationTime;
  @override
  int get temperature;
  @override
  @JsonKey(name: 'weather_code')
  int get weatherCode;
  @override
  @JsonKey(name: 'weather_icons')
  List<String> get weatherIcons;
  @override
  @JsonKey(name: 'weather_descriptions')
  List<String> get weatherDescriptions;
  @override
  @JsonKey(name: 'wind_speed')
  int get windSpeed;
  @override
  @JsonKey(name: 'wind_degree')
  int get windDegree;
  @override
  @JsonKey(name: 'wind_dir')
  String get windDir;
  @override
  int get pressure;
  @override
  int get precip;
  @override
  int get humidity;
  @override
  int get cloudcover;
  @override
  int get feelslike;
  @override
  @JsonKey(name: 'uv_index')
  int get uvIndex;
  @override
  int get visibility;
  @override
  @JsonKey(name: 'is_day')
  String get isDay;

  /// Create a copy of Current
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CurrentImplCopyWith<_$CurrentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
