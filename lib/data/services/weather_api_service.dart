import 'package:dio/dio.dart';
import '../../core/constants/api_constants.dart';
import '../../core/errors/exceptions.dart';
import '../models/weather_model.dart';
import '../models/forecast_model.dart';

// Service responsible for making API calls to OpenWeatherMap
class WeatherApiService {
  final Dio _dio;

  WeatherApiService({Dio? dio}) : _dio = dio ?? Dio();

  // Get current weather by coordinates
  Future<WeatherModel> getCurrentWeather({
    required double latitude,
    required double longitude,
  }) async {
    try {
      final response = await _dio.get(
        '${ApiConstants.baseUrl}${ApiConstants.currentWeatherEndpoint}',
        queryParameters: {
          'lat': latitude,
          'lon': longitude,
          'appid': ApiConstants.apiKey,
          'units': 'metric',  // Use Celsius
        },
      );

      if (response.statusCode == 200) {
        return WeatherModel.fromJson(response.data);
      } else {
        throw ServerException('Failed to fetch weather data');
      }
    } on DioException catch (e) {
      // Handle network errors
      throw ServerException(
        e.response?.data['message'] ?? 'Network error occurred',
      );
    }
  }

  // Get current weather by city name
  Future<WeatherModel> getCurrentWeatherByCityName(String cityName) async {
    try {
      final response = await _dio.get(
        '${ApiConstants.baseUrl}${ApiConstants.currentWeatherEndpoint}',
        queryParameters: {
          'q': cityName,
          'appid': ApiConstants.apiKey,
          'units': 'metric',
        },
      );

      if (response.statusCode == 200) {
        return WeatherModel.fromJson(response.data);
      } else {
        throw ServerException('Failed to fetch weather data');
      }
    } on DioException catch (e) {
      throw ServerException(
        e.response?.data['message'] ?? 'Network error occurred',
      );
    }
  }

  // Get 5-day forecast
  Future<ForecastModel> getForecast({
    required double latitude,
    required double longitude,
  }) async {
    try {
      final response = await _dio.get(
        '${ApiConstants.baseUrl}${ApiConstants.forecastEndpoint}',
        queryParameters: {
          'lat': latitude,
          'lon': longitude,
          'appid': ApiConstants.apiKey,
          'units': 'metric',
          'cnt': 40, // 5 days of 3-hour forecasts (5 * 8 = 40)
        },
      );

      if (response.statusCode == 200) {
        return ForecastModel.fromJson(response.data);
      } else {
        throw ServerException('Failed to fetch forecast data');
      }
    } on DioException catch (e) {
      throw ServerException(
        e.response?.data['message'] ?? 'Network error occurred',
      );
    }
  }
}