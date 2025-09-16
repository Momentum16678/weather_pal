// lib/src/data/repositories/weather_repository_impl.dart
import 'package:dartz/dartz.dart';
import 'package:geolocator/geolocator.dart';
import '../../core/errors/exceptions.dart';
import '../../core/errors/failures.dart';
import '../../domain/entities/weather.dart';
import '../../domain/entities/forecast.dart';
import '../../domain/entities/location.dart';
import '../../domain/repositories/weather_repository.dart';
import '../services/weather_api_service.dart';
import '../services/location_service.dart';
import '../services/local_storage_service.dart';

// Implementation of the repository interface
// This orchestrates all services and handles error conversion
class WeatherRepositoryImpl implements WeatherRepository {
  final WeatherApiService _weatherApiService;
  final LocationService _locationService;
  final LocalStorageService _localStorageService;

  WeatherRepositoryImpl({
    required WeatherApiService weatherApiService,
    required LocationService locationService,
    required LocalStorageService localStorageService,
  })  : _weatherApiService = weatherApiService,
        _locationService = locationService,
        _localStorageService = localStorageService;

  // Get current weather with error handling
  @override
  Future<Either<Failure, Weather>> getCurrentWeather({
    required double latitude,
    required double longitude,
  }) async {
    try {
      final weatherModel = await _weatherApiService.getCurrentWeather(
        latitude: latitude,
        longitude: longitude,
      );
      return Right(weatherModel.toEntity());
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    }
  }

  // Get weather by city name
  @override
  Future<Either<Failure, Weather>> getCurrentWeatherByCityName(
      String cityName,
      ) async {
    try {
      final weatherModel = await _weatherApiService.getCurrentWeatherByCityName(
        cityName,
      );
      return Right(weatherModel.toEntity());
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    }
  }

  // Get forecast
  @override
  Future<Either<Failure, Forecast>> getForecast({
    required double latitude,
    required double longitude,
  }) async {
    try {
      final forecastModel = await _weatherApiService.getForecast(
        latitude: latitude,
        longitude: longitude,
      );
      return Right(forecastModel.toEntity());
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    }
  }

  // Get saved locations from local storage
  @override
  Future<Either<Failure, List<Location>>> getSavedLocations() async {
    try {
      final locations = await _localStorageService.getLocations();
      return Right(locations);
    } on CacheException catch (e) {
      return Left(CacheFailure(e.message));
    }
  }

  // Save location with duplicate check
  @override
  Future<Either<Failure, void>> saveLocation(Location location) async {
    try {
      final locations = await _localStorageService.getLocations();

      // Check if location already exists
      final index = locations.indexWhere((l) => l.id == location.id);

      if (index != -1) {
        // Update existing location
        locations[index] = location;
      } else {
        // Add new location
        locations.add(location);
      }

      await _localStorageService.saveLocations(locations);
      return const Right(null);
    } on CacheException catch (e) {
      return Left(CacheFailure(e.message));
    }
  }

  // Delete location
  @override
  Future<Either<Failure, void>> deleteLocation(String locationId) async {
    try {
      final locations = await _localStorageService.getLocations();
      locations.removeWhere((l) => l.id == locationId);
      await _localStorageService.saveLocations(locations);
      return const Right(null);
    } on CacheException catch (e) {
      return Left(CacheFailure(e.message));
    }
  }

  // Get GPS position
  @override
  Future<Either<Failure, Position>> getCurrentPosition() async {
    try {
      final position = await _locationService.getCurrentLocation();
      return Right(position);
    } on LocationException catch (e) {
      return Left(LocationFailure(e.message));
    }
  }
}