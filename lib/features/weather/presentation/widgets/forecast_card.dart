import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import '../../../../core/constants/app_constants.dart';
import '../../domain/entities/weather.dart';

class ForecastCard extends StatelessWidget {
  const ForecastCard({
    super.key,
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
