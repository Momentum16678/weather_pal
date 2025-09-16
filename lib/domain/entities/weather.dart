import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather.freezed.dart';  // Generated file

// Weather entity represents the core weather data
// Freezed creates immutable objects with copyWith, == and hashCode

@freezed
class Weather with _$Weather {
  const factory Weather({
    required String cityName,
    required String country,
    required double temperature,      // Current temp in Celsius
    required double feelsLike,        // Feels like temperature
    required double tempMin,          // Minimum temperature
    required double tempMax,          // Maximum temperature
    required int pressure,            // Atmospheric pressure
    required int humidity,            // Humidity percentage
    required String description,      // Weather description
    required String icon,             // Weather icon code
    required double windSpeed,        // Wind speed in m/s
    required int windDeg,            // Wind direction in degrees
    required DateTime dateTime,       // Measurement time
    required int visibility,          // Visibility in meters
    double? rain,                    // Rain volume (optional)
    double? snow,                    // Snow volume (optional)
  }) = _Weather;
}