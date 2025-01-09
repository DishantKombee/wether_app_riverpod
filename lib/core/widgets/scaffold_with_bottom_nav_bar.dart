import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../constants/route_constants.dart';

class ScaffoldWithBottomNavBar extends StatelessWidget {
  const ScaffoldWithBottomNavBar({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.cloud),
            label: RouteConstants.currentWeatherLabel,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.timeline),
            label: RouteConstants.forecastLabel,
          ),
        ],
        currentIndex: _calculateSelectedIndex(context),
        onTap: (int idx) => _onItemTapped(idx, context),
      ),
    );
  }

  static int _calculateSelectedIndex(BuildContext context) {
    final String location = GoRouterState.of(context).uri.toString();
    if (location == RouteConstants.currentWeather) return 0;
    if (location == RouteConstants.forecast) return 1;
    return 0;
  }

  void _onItemTapped(int index, BuildContext context) {
    switch (index) {
      case 0:
        GoRouter.of(context).go(RouteConstants.currentWeather);
        break;
      case 1:
        GoRouter.of(context).go(RouteConstants.forecast);
        break;
    }
  }
}
