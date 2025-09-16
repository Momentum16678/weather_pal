import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/weather.dart';

part 'weather_model.freezed.dart';
part 'weather_model.g.dart';  // For JSON serialization

// WeatherModel maps the API JSON response to our domain entity
@freezed
class WeatherModel with _$WeatherModel {
  const WeatherModel._();  // Required for custom methods

  const factory WeatherModel({
    required String name,                        // City name
    required Sys sys,                           // System data (country, sunrise, sunset)
    required Main main,                         // Main weather data
    required List<WeatherDescription> weather,  // Weather descriptions
    required Wind wind,                         // Wind data
    required int visibility,                    // Visibility
    required int dt,                           // Unix timestamp
    Rain? rain,                                // Optional rain data
    Snow? snow,                                // Optional snow data
  }) = _WeatherModel;

  // JSON deserialization
  factory WeatherModel.fromJson(Map<String, dynamic> json) =>
      _$WeatherModelFromJson(json);

  // Convert API model to domain entity
  Weather toEntity() {
    return Weather(
      cityName: name,
      country: sys.country,
      temperature: main.temp,
      feelsLike: main.feelsLike,
      tempMin: main.tempMin,
      tempMax: main.tempMax,
      pressure: main.pressure,
      humidity: main.humidity,
      description: weather.first.description,
      icon: weather.first.icon,
      windSpeed: wind.speed,
      windDeg: wind.deg,
      dateTime: DateTime.fromMillisecondsSinceEpoch(dt * 1000),
      visibility: visibility,
      rain: rain?.h1,
      snow: snow?.h1,
    );
  }
}

// Nested models for API response structure
@freezed
class Sys with _$Sys {
  const factory Sys({
    required String country,
    required int sunrise,
    required int sunset,
  }) = _Sys;

  factory Sys.fromJson(Map<String, dynamic> json) => _$SysFromJson(json);
}

@freezed
class Main with _$Main {
  const factory Main({
    required double temp,
    @JsonKey(name: 'feels_like') required double feelsLike,  // Map JSON field names
    @JsonKey(name: 'temp_min') required double tempMin,
    @JsonKey(name: 'temp_max') required double tempMax,
    required int pressure,
    required int humidity,
  }) = _Main;

  factory Main.fromJson(Map<String, dynamic> json) => _$MainFromJson(json);
}

@freezed
class WeatherDescription with _$WeatherDescription {
  const factory WeatherDescription({
    required String main,         // e.g., "Rain"
    required String description,  // e.g., "light rain"
    required String icon,        // e.g., "10d"
  }) = _WeatherDescription;

  factory WeatherDescription.fromJson(Map<String, dynamic> json) =>
      _$WeatherDescriptionFromJson(json);
}

@freezed
class Wind with _$Wind {
  const factory Wind({
    required double speed,
    required int deg,
  }) = _Wind;

  factory Wind.fromJson(Map<String, dynamic> json) => _$WindFromJson(json);
}

@freezed
class Rain with _$Rain {
  const factory Rain({
    @JsonKey(name: '1h') double? h1,  // Rain volume for last 1 hour
    @JsonKey(name: '3h') double? h3,  // Rain volume for last 3 hours
  }) = _Rain;

  factory Rain.fromJson(Map<String, dynamic> json) => _$RainFromJson(json);
}

@freezed
class Snow with _$Snow {
  const factory Snow({
    @JsonKey(name: '1h') double? h1,
    @JsonKey(name: '3h') double? h3,
  }) = _Snow;

  factory Snow.fromJson(Map<String, dynamic> json) => _$SnowFromJson(json);
}