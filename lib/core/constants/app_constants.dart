class AppConstants {
  static const String appName = 'WeatherPal';
  static const Duration apiCacheTime = Duration(minutes: 10);
  static const int maxSavedLocations = 5;
  static const String storageKey = 'saved_locations';  // SharedPreferences key
  static const String themeKey = 'theme_mode';         // Theme preference key
}