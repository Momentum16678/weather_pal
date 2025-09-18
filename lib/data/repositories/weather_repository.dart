import 'package:dartz/dartz.dart';
import 'package:geolocator/geolocator.dart';
import '../../core/errors/failures.dart';
import '../../domain/entities/forecast.dart';
import '../../domain/entities/location.dart';
import '../../domain/entities/weather.dart';

// Repository interface defines all data operations
// Uses Either type for error handling (Left = Failure, Right = Success)
abstract class WeatherRepository {
  // Get current weather by coordinates
  Future<Either<Failure, Weather>> getCurrentWeather({
    required double latitude,
    required double longitude,
  });

  // Get current weather by city name
  Future<Either<Failure, Weather>> getCurrentWeatherByCityName(String cityName);

  // Get 5-day forecast
  Future<Either<Failure, Forecast>> getForecast({
    required double latitude,
    required double longitude,
  });

  // Local storage operations
  Future<Either<Failure, List<Location>>> getSavedLocations();
  Future<Either<Failure, void>> saveLocation(Location location);
  Future<Either<Failure, void>> deleteLocation(String locationId);

  // GPS operations
  Future<Either<Failure, Position>> getCurrentPosition();
}