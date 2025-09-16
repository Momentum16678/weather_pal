import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import '../../domain/entities/weather.dart';
import '../../domain/entities/forecast.dart';
import '../../domain/entities/location.dart';
import 'service_providers.dart';

part 'weather_providers.freezed.dart';

// Weather state definition using freezed
@freezed
class WeatherState with _$WeatherState {
  const factory WeatherState.initial() = _Initial;
  const factory WeatherState.loading() = _Loading;
  const factory WeatherState.loaded(Weather weather) = _Loaded;
  const factory WeatherState.error(String message) = _Error;
}

// Provider for current weather by location
// .family allows parameters, .autoDispose cleans up when not used
final currentWeatherProvider = FutureProvider.autoDispose.family<Weather, Location>(
      (ref, location) async {
    final repository = ref.watch(weatherRepositoryProvider);
    final result = await repository.getCurrentWeather(
      latitude: location.latitude,
      longitude: location.longitude,
    );

    return result.fold(
          (failure) => throw Exception(failure.message),
          (weather) => weather,
    );
  },
);

// Provider for weather by city name (used in search)
final weatherByCityNameProvider = FutureProvider.autoDispose.family<Weather, String>(
      (ref, cityName) async {
    final repository = ref.watch(weatherRepositoryProvider);
    final result = await repository.getCurrentWeatherByCityName(cityName);

    return result.fold(
          (failure) => throw Exception(failure.message),
          (weather) => weather,
    );
  },
);

// Provider for 5-day forecast
final forecastProvider = FutureProvider.autoDispose.family<Forecast, Location>(
      (ref, location) async {
    final repository = ref.watch(weatherRepositoryProvider);
    final result = await repository.getForecast(
      latitude: location.latitude,
      longitude: location.longitude,
    );

    return result.fold(
          (failure) => throw Exception(failure.message),
          (forecast) => forecast,
    );
  },
);

// Provider for current GPS position
final currentPositionProvider = FutureProvider.autoDispose<Position>((ref) async {
  final repository = ref.watch(weatherRepositoryProvider);
  final result = await repository.getCurrentPosition();

  return result.fold(
        (failure) => throw Exception(failure.message),
        (position) => position,
  );
});

// Provider for current location weather (GPS-based)
final currentLocationWeatherProvider = FutureProvider.autoDispose<Weather>((ref) async {
  // First get GPS position
  final position = await ref.watch(currentPositionProvider.future);
  final repository = ref.watch(weatherRepositoryProvider);

  // Then get weather for that position
  final result = await repository.getCurrentWeather(
    latitude: position.latitude,
    longitude: position.longitude,
  );

  return result.fold(
        (failure) => throw Exception(failure.message),
        (weather) => weather,
  );
});