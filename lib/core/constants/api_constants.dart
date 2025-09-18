class ApiConstants {
  static const String baseUrl = 'https://api.openweathermap.org/data/2.5';
  static const String apiKey = '7436fffbcdf7f464bc6610e24892ae6d';
  static const String currentWeatherEndpoint = '/weather';
  static const String forecastEndpoint = '/forecast';
  static const String iconUrl = 'https://openweathermap.org/img/wn/';

  // Helper method to construct icon URLs
  static String getIconUrl(String iconCode) => '$iconUrl$iconCode@4x.png';
}