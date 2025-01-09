# Weather App with Riverpod

A professional weather application built with Flutter, showcasing clean architecture, modern state management with Riverpod, and beautiful UI design.

## Features

- 🌤️ Real-time weather data using OpenWeatherMap API
- 📍 Location-based weather updates
- 🔍 Search weather by city name
- 📅 5-day weather forecast
- 🎨 Beautiful and responsive UI with smooth animations
- 🌓 Automatic dark/light theme support
- 🔄 Pull-to-refresh functionality
- ⚡ Efficient state management with Riverpod
- 🏗️ Clean Architecture implementation
- 🧪 Unit and widget tests

## Architecture

The project follows Clean Architecture principles with the following layers:

```
lib/
  ├── core/                 # Core functionality, shared across features
  │   ├── api/             # API client and network handling
  │   ├── constants/       # App-wide constants
  │   ├── theme/          # Theme configuration
  │   ├── utils/          # Utility functions
  │   └── widgets/        # Shared widgets
  │
  └── features/           # Feature modules
      └── weather/        # Weather feature
          ├── data/       # Data layer (repositories, models)
          ├── domain/     # Domain layer (entities, repositories interfaces)
          └── presentation/ # Presentation layer (screens, providers, widgets)
```

## State Management

The app uses Riverpod for state management, demonstrating:

- Dependency injection
- Async state handling
- Error handling
- State persistence
- Code generation with riverpod_generator

## Getting Started

1. Clone the repository

```bash
git clone https://github.com/yourusername/weather_app_riverpod.git
```

2. Get dependencies

```bash
flutter pub get
```

3. Run code generation

```bash
flutter pub run build_runner build --delete-conflicting-outputs
```

4. Add your OpenWeatherMap API key

- Get an API key from [OpenWeatherMap](https://openweathermap.org/api)
- Replace `YOUR_API_KEY` in `lib/core/constants/app_constants.dart`

5. Run the app

```bash
flutter run
```

## Testing

The project includes comprehensive tests:

```bash
# Run all tests
flutter test

# Run tests with coverage
flutter test --coverage
```

## Dependencies

- **State Management**

  - flutter_riverpod
  - riverpod_annotation

- **Navigation**

  - go_router

- **Network**

  - dio
  - pretty_dio_logger

- **UI Components**

  - flutter_screenutil
  - cached_network_image
  - shimmer

- **Location**

  - geolocator
  - geocoding

- **Utils**
  - freezed
  - json_serializable
  - intl

## Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Acknowledgments

- [OpenWeatherMap](https://openweathermap.org/) for providing the weather data API
- [Flutter](https://flutter.dev/) and [Dart](https://dart.dev/) teams for the amazing framework
- [Riverpod](https://riverpod.dev/) team for the excellent state management solution
