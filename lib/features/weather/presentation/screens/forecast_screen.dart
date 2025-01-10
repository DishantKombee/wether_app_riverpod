import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:weather_app_riverpod/features/weather/presentation/widgets/forecast_content.dart';
import '../../../../core/constants/app_constants.dart';
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
        data: (forecast) => ForecastContent(forecast: forecast),
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
