// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$weatherNotifierHash() => r'ec33c029bdb898f2ac82e376061622a3d032ebf8';

/// See also [WeatherNotifier].
@ProviderFor(WeatherNotifier)
final weatherNotifierProvider =
    AutoDisposeAsyncNotifierProvider<WeatherNotifier, Weather>.internal(
  WeatherNotifier.new,
  name: r'weatherNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$weatherNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$WeatherNotifier = AutoDisposeAsyncNotifier<Weather>;
String _$forecastNotifierHash() => r'ac45d8739eede9743dd56bdb832522089ab8c1e4';

/// See also [ForecastNotifier].
@ProviderFor(ForecastNotifier)
final forecastNotifierProvider =
    AutoDisposeAsyncNotifierProvider<ForecastNotifier, List<Weather>>.internal(
  ForecastNotifier.new,
  name: r'forecastNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$forecastNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ForecastNotifier = AutoDisposeAsyncNotifier<List<Weather>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
