import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import '../../../../core/constants/app_constants.dart';
import '../../domain/entities/weather.dart';
import '../providers/forecast_provider.dart';
import '../widgets/weather_error_widget.dart';
import '../widgets/weather_loading_widget.dart';

class ForecastScreen extends ConsumerWidget {
  const ForecastScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final forecastAsync = ref.watch(forecastNotifierProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text(AppConstants.forecastTitle),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () => _showSearchDialog(context, ref),
          ),
        ],
      ),
      body: forecastAsync.when(
        data: (forecast) => _ForecastContent(forecast: forecast),
        loading: () => const WeatherLoadingWidget(),
        error: (error, stack) => WeatherErrorWidget(
          message: error.toString(),
          onRetry: () => ref.refresh(forecastNotifierProvider),
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
          ),
          textInputAction: TextInputAction.search,
          onSubmitted: (value) {
            Navigator.pop(context);
            if (value.isNotEmpty) {
              ref
                  .read(forecastNotifierProvider.notifier)
                  .getForecastForCity(value.trim());
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
              Navigator.pop(context);
              if (controller.text.isNotEmpty) {
                ref
                    .read(forecastNotifierProvider.notifier)
                    .getForecastForCity(controller.text.trim());
              }
            },
            child: const Text(AppConstants.search),
          ),
        ],
      ),
    );
  }
}

class _ForecastContent extends StatelessWidget {
  const _ForecastContent({
    required this.forecast,
  });

  final List<Weather> forecast;

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        // Refresh forecast data
      },
      child: ListView.builder(
        padding: EdgeInsets.all(16.w),
        itemCount: forecast.length,
        itemBuilder: (context, index) {
          final weather = forecast[index];
          return _ForecastCard(weather: weather);
        },
      ),
    );
  }
}

class _ForecastCard extends StatelessWidget {
  const _ForecastCard({
    required this.weather,
  });

  final Weather weather;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final dateFormat = DateFormat(AppConstants.dateFormat);

    return Card(
      margin: EdgeInsets.only(bottom: 16.h),
      child: Padding(
        padding: EdgeInsets.all(16.w),
        child: Row(
          children: [
            Image.network(
              weather.icon,
              width: 50.w,
              height: 50.w,
            ),
            SizedBox(width: 16.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    dateFormat.format(weather.timestamp),
                    style: theme.textTheme.bodyMedium,
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    weather.description.toUpperCase(),
                    style: theme.textTheme.titleMedium,
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  '${weather.temperature.round()}${AppConstants.celsiusUnit}',
                  style: theme.textTheme.titleLarge,
                ),
                Text(
                  'Feels ${weather.feelsLike.round()}${AppConstants.celsiusUnit}',
                  style: theme.textTheme.bodyMedium,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
