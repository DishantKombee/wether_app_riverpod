import 'package:go_router/go_router.dart';
import '../../features/weather/presentation/screens/current_weather_screen.dart';
import '../../features/weather/presentation/screens/forecast_screen.dart';
import '../constants/route_constants.dart';
import '../widgets/scaffold_with_bottom_nav_bar.dart';

final appRouter = GoRouter(
  initialLocation: RouteConstants.currentWeather,
  routes: [
    ShellRoute(
      builder: (context, state, child) {
        return ScaffoldWithBottomNavBar(child: child);
      },
      routes: [
        GoRoute(
          path: RouteConstants.currentWeather,
          builder: (context, state) => const CurrentWeatherScreen(),
          routes: const [],
        ),
        GoRoute(
          path: RouteConstants.forecast,
          builder: (context, state) => const ForecastScreen(),
          routes: const [],
        ),
      ],
    ),
  ],
);
