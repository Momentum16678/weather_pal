import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../data/repositories/weather_repository.dart';
import '../../data/services/location_service.dart';
import '../../data/services/local_storage_service.dart';
import '../../data/repositories/weather_repository_impl.dart';
import '../../data/services/weather_api_service.dart';

// These providers create and manage service instances
// They handle dependency injection throughout the app

// Dio instance for network requests
final dioProvider = Provider<Dio>((ref) {
  return Dio()
    ..interceptors.add(LogInterceptor(
      requestBody: true,
      responseBody: true,
    ));
});

// Weather API service
final weatherApiServiceProvider = Provider<WeatherApiService>((ref) {
  return WeatherApiService(dio: ref.watch(dioProvider));
});

// Location service
final locationServiceProvider = Provider<LocationService>((ref) {
  return LocationService();
});

// Local storage service
final localStorageServiceProvider = Provider<LocalStorageService>((ref) {
  return LocalStorageService();
});

// Main repository that combines all services
final weatherRepositoryProvider = Provider<WeatherRepository>((ref) {
  return WeatherRepositoryImpl(
    weatherApiService: ref.watch(weatherApiServiceProvider),
    locationService: ref.watch(locationServiceProvider),
    localStorageService: ref.watch(localStorageServiceProvider),
  );
});