class AppConstants {
  static const String appName = 'Weather App';

  // API Constants
  static const String baseUrl = 'http://api.weatherstack.com';
  static const String apiKey = 'f3eaba32334ca96b6394a6626c3bc454';
  static const String weatherEndpoint = '/current';

  // API Parameters
  static const String accessKey = 'access_key';
  static const String query = 'query';

  // Error Messages
  static const String genericError = 'Something went wrong. Please try again.';
  static const String networkError = 'Please check your internet connection.';
  static const String locationError = 'Unable to get your location.';
  static const String locationServicesDisabled =
      'Location services are disabled.';
  static const String locationPermissionDenied =
      'Location permissions are denied';
  static const String locationPermissionPermanentlyDenied =
      'Location permissions are permanently denied, we cannot request permissions.';
  static const String failedToGetWeather = 'Failed to get weather: ';
  static const String failedToGetForecast = 'Failed to get forecast: ';

  // Storage Keys
  static const String lastLocationKey = 'last_location';
  static const String temperatureUnitKey = 'temperature_unit';

  // Units
  static const String celsiusUnit = '°C';
  static const String humidityUnit = '%';
  static const String windSpeedUnit = 'km/h';
  static const String pressureUnit = 'hPa';
  static const String visibilityUnit = 'km';
  static const String precipitationUnit = 'mm';
  static const String cloudCoverUnit = '%';
  static const String uvIndexUnit = '';

  // UI Strings
  static const String currentWeatherTitle = 'Current Weather';
  static const String forecastTitle = 'Forecast';
  static const String searchCity = 'Search City';
  static const String enterCityName = 'Enter city name';
  static const String cancel = 'Cancel';
  static const String search = 'Search';
  static const String retry = 'Retry';
  static const String loading = 'Loading...';
  static const String error = 'Error';
  static const String feelsLike = 'Feels Like';
  static const String humidity = 'Humidity';
  static const String windSpeed = 'Wind Speed';
  static const String pressure = 'Pressure';
  static const String visibility = 'Visibility';
  static const String precipitation = 'Precipitation';
  static const String cloudCover = 'Cloud Cover';
  static const String uvIndex = 'UV Index';
  static const String windDirection = 'Wind Direction';

  // Date Format
  static const String dateFormat = 'E, MMM d, y HH:mm';

  // Animation Duration
  static const Duration defaultAnimationDuration = Duration(milliseconds: 300);
}
