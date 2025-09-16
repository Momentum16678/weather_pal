import 'package:freezed_annotation/freezed_annotation.dart';
import 'weather.dart';

part 'forecast.freezed.dart';

// Forecast entity contains multiple weather predictions
@freezed
class Forecast with _$Forecast {
  const factory Forecast({
    required String cityName,
    required String country,
    required List<Weather> hourlyForecasts,  // List of hourly weather data
  }) = _Forecast;
}