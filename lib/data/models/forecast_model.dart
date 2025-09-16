import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/forecast.dart';
import '../../domain/entities/weather.dart';
import 'weather_model.dart';  // Reuse Main, Wind, etc. from weather_model

part 'forecast_model.freezed.dart';
part 'forecast_model.g.dart';

// ForecastModel maps the 5-day forecast API response
@freezed
class ForecastModel with _$ForecastModel {
  const ForecastModel._();

  const factory ForecastModel({
    required City city,                  // City information
    required List<ForecastItem> list,   // List of forecasts (40 items for 5 days)
  }) = _ForecastModel;

  factory ForecastModel.fromJson(Map<String, dynamic> json) =>
      _$ForecastModelFromJson(json);

  // Convert to domain entity
  Forecast toEntity() {
    return Forecast(
      cityName: city.name,
      country: city.country,
      hourlyForecasts: list.map((item) => item.toWeather(city)).toList(),
    );
  }
}

@freezed
class City with _$City {
  const factory City({
    required String name,
    required String country,
    required Coord coord,  // Coordinates
  }) = _City;

  factory City.fromJson(Map<String, dynamic> json) => _$CityFromJson(json);
}

@freezed
class Coord with _$Coord {
  const factory Coord({
    required double lat,
    required double lon,
  }) = _Coord;

  factory Coord.fromJson(Map<String, dynamic> json) => _$CoordFromJson(json);
}

@freezed
class ForecastItem with _$ForecastItem {
  const ForecastItem._();

  const factory ForecastItem({
    required int dt,                          // Unix timestamp
    required Main main,                       // Reuse Main from weather_model
    required List<WeatherDescription> weather, // Reuse from weather_model
    required Wind wind,                       // Reuse from weather_model
    required int visibility,
    Rain? rain,
    Snow? snow,
  }) = _ForecastItem;

  factory ForecastItem.fromJson(Map<String, dynamic> json) =>
      _$ForecastItemFromJson(json);

  // Convert forecast item to Weather entity
  Weather toWeather(City city) {
    return Weather(
      cityName: city.name,
      country: city.country,
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