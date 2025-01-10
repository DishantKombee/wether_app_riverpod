# ❄️  📱 Weather App with Clean Architecture & Riverpod

A modern, professional weather application built with Flutter 3.24.5, embracing clean architecture and Riverpod state management for real-time weather updates and forecasts.
---
## 🎯 Key Features
🌡️ Real-time Weather Data: Current conditions using Weatherstack API
📍 Location-Based Updates: Automatic weather for current location
🔍 City Search: Find weather worldwide with city search
🎨 Beautiful UI: Modern Material Design 3 with responsive layout
🏛️ Clean Architecture: Modular, testable, and maintainable codebase
⚡ Performance Optimized: Fast loading with shimmer effects and smooth animations

## 📂 Directory Structure
```plaintext
lib/
├── core/ # Core functionality
│ ├── api/ # API client & network
│ ├── constants/ # App-wide constants
│ ├── services/ # Core services
│ └── widgets/ # Shared widgets
└── features/
└── weather/ # Weather feature
├── data/ # Data layer
│ ├── datasources/
│ ├── models/
│ └── repositories/
├── domain/ # Business logic
│ ├── entities/
│ ├── repositories/
│ └── usecases/
└── presentation/
├── providers/
├── screens/
└── widgets/
```
## 🛠️ **Tech Stack**

- Framework: Flutter 3.0+
- State Management: Riverpod 2.4+
- Navigation: Go Router 13.0
- Network: Dio with Pretty Logger
- Location: Geolocator & Geocoding
- UI Components:
  - Flutter ScreenUtil
  - Shimmer
  - Google Fonts
- Code Generation:
  - Freezed
  - Riverpod Generator
  - JSON Serializable

## ⚙️ **Getting Started**

1.  **Clone the Repository**

```bash
git clone https://github.com/yourusername/weather_app_riverpod.git
cd weather_app_riverpod
```

2. **Install Dependencies**

```bash
flutter pub get
```

3. **Run Code Generation**

```bash
flutter pub run build_runner build --delete-conflicting-outputs
```

4. **Add Weatherstack API Key**

- Get an API key from [Weatherstack](https://weatherstack.com/)
- Update `lib/core/constants/app_constants.dart`

```dart
static const String apiKey = 'YOUR_API_KEY';
```

5. Run the App

```bash
flutter run
```

🧪 **Testing**
Run all tests:

```bash
flutter test
```

## 📸 **Screenshots**




<p align="center">
  <img src="screenshot/image-1.png  width="250"/>
   <img src="screenshot/image-2.png  width="250"/>
   <img src="screenshot/image-3.png  width="250"/>
   <img src="screenshot/image-4.png  width="250"/>
</p>

---
## Apk File 
[APK](https://github.com/DishantKombee/todo_app_provider/blob/main/android/app-release.apk)


## 🔑 Key Implementation Details

- 🏗️ Clean Architecture

  - Clear separation of concerns
  - Domain-driven design
  - Repository pattern
  - Dependency injection

- 🔄 State Management with Riverpod

  - Async state handling
  - Dependency injection
  - Code generation
  - Error handling
  - State persistence

- 📱 UI/UX Features
  - Responsive design
  - Loading states with shimmer
  - Error handling with retry
  - Pull-to-refresh
  - Location permissions handling

🤝 Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## 📜 License
This project is licensed under the MIT License.

## 👨‍💻 **Author**

**Dishant Mehta**

- 🌐 [Portfolio](https://github.com/DishantKombee)


Built with ❤️ using Flutter and Riverpod
