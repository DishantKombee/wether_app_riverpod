import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import '../../../../core/constants/app_constants.dart';
import '../../../../core/widgets/weather_error_widget.dart';
import '../../../../core/widgets/weather_loading_widget.dart';
import '../providers/weather_provider.dart';

class CurrentWeatherScreen extends ConsumerWidget {
  const CurrentWeatherScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final weatherAsync = ref.watch(weatherNotifierProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text(AppConstants.currentWeatherTitle),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () => _showSearchDialog(context, ref),
          ),
          IconButton(
            icon: const Icon(Icons.my_location),
            onPressed: () => ref.refresh(weatherNotifierProvider),
          ),
        ],
      ),
      body: weatherAsync.when(
        loading: () => const WeatherLoadingWidget(),
        error: (error, stack) => WeatherErrorWidget(
          error: error.toString(),
          onRetry: () => ref.refresh(weatherNotifierProvider),
        ),
        data: (weather) => SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.all(16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Location and Time
                Text(
                  weather.cityName,
                  style: theme.textTheme.headlineMedium,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 8.h),
                Text(
                  DateFormat(AppConstants.dateFormat).format(weather.timestamp),
                  style: theme.textTheme.bodyLarge?.copyWith(
                    color: theme.textTheme.bodyLarge?.color?.withOpacity(0.7),
                  ),
                ),
                SizedBox(height: 32.h),

                // Weather Icon and Temperature
                Container(
                  padding: EdgeInsets.all(16.w),
                  decoration: BoxDecoration(
                    color: theme.colorScheme.primaryContainer.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(16.r),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.network(
                        weather.icon,
                        width: 100.w,
                        height: 100.w,
                        errorBuilder: (context, error, stackTrace) =>
                            Icon(Icons.wb_sunny, size: 100.w),
                      ),
                      SizedBox(width: 16.w),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${weather.temperature.round()}${AppConstants.celsiusUnit}',
                            style: theme.textTheme.displayMedium,
                          ),
                          Text(
                            weather.description.toUpperCase(),
                            style: theme.textTheme.titleMedium?.copyWith(
                              color: theme.colorScheme.primary,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 32.h),

                // Weather Details Grid
                GridView.count(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  crossAxisCount: 2,
                  mainAxisSpacing: 16.h,
                  crossAxisSpacing: 16.w,
                  childAspectRatio: 1.5,
                  children: [
                    _WeatherInfoCard(
                      icon: Icons.thermostat,
                      title: AppConstants.feelsLike,
                      value:
                          '${weather.feelsLike.round()}${AppConstants.celsiusUnit}',
                      color: theme.colorScheme.primary,
                    ),
                    _WeatherInfoCard(
                      icon: Icons.water_drop,
                      title: AppConstants.humidity,
                      value: '${weather.humidity}${AppConstants.humidityUnit}',
                      color: theme.colorScheme.secondary,
                    ),
                    _WeatherInfoCard(
                      icon: Icons.air,
                      title: AppConstants.windSpeed,
                      value:
                          '${weather.windSpeed} ${AppConstants.windSpeedUnit}',
                      color: theme.colorScheme.tertiary,
                    ),
                    _WeatherInfoCard(
                      icon: Icons.explore,
                      title: AppConstants.windDirection,
                      value: '${weather.windDir} ${weather.windDegree}°',
                      color: theme.colorScheme.error,
                    ),
                    _WeatherInfoCard(
                      icon: Icons.visibility,
                      title: AppConstants.visibility,
                      value:
                          '${weather.visibility} ${AppConstants.visibilityUnit}',
                      color: theme.colorScheme.primary,
                    ),
                    _WeatherInfoCard(
                      icon: Icons.compress,
                      title: AppConstants.pressure,
                      value: '${weather.pressure} ${AppConstants.pressureUnit}',
                      color: theme.colorScheme.secondary,
                    ),
                    _WeatherInfoCard(
                      icon: Icons.cloud,
                      title: AppConstants.cloudCover,
                      value:
                          '${weather.cloudCover}${AppConstants.cloudCoverUnit}',
                      color: theme.colorScheme.tertiary,
                    ),
                    _WeatherInfoCard(
                      icon: Icons.water,
                      title: AppConstants.precipitation,
                      value:
                          '${weather.precipitation} ${AppConstants.precipitationUnit}',
                      color: theme.colorScheme.error,
                    ),
                    _WeatherInfoCard(
                      icon: Icons.wb_sunny,
                      title: AppConstants.uvIndex,
                      value: '${weather.uvIndex}${AppConstants.uvIndexUnit}',
                      color: theme.colorScheme.primary,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _showSearchDialog(BuildContext context, WidgetRef ref) async {
    final controller = TextEditingController();
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text(AppConstants.searchCity),
        content: TextField(
          controller: controller,
          decoration: const InputDecoration(
            hintText: AppConstants.enterCityName,
            border: OutlineInputBorder(),
          ),
          textInputAction: TextInputAction.search,
          onSubmitted: (value) {
            if (value.isNotEmpty) {
              ref
                  .read(weatherNotifierProvider.notifier)
                  .getWeatherForCity(value);
              Navigator.pop(context);
            }
          },
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text(AppConstants.cancel),
          ),
          TextButton(
            onPressed: () {
              if (controller.text.isNotEmpty) {
                ref
                    .read(weatherNotifierProvider.notifier)
                    .getWeatherForCity(controller.text);
                Navigator.pop(context);
              }
            },
            child: const Text(AppConstants.search),
          ),
        ],
      ),
    );
  }
}

class _WeatherInfoCard extends StatelessWidget {
  const _WeatherInfoCard({
    required this.icon,
    required this.title,
    required this.value,
    required this.color,
  });

  final IconData icon;
  final String title;
  final String value;
  final Color color;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(16.r),
        border: Border.all(color: color.withOpacity(0.2)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(child: Icon(icon, color: color)),
              SizedBox(width: 5.w),
              Text(
                title,
                style: theme.textTheme.titleMedium?.copyWith(color: color),
              ),
            ],
          ),
          SizedBox(height: 8.h),
          Text(
            value,
            style: theme.textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
