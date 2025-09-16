// lib/src/data/services/location_service.dart
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart' as geocoding;
import '../../core/errors/exceptions.dart';

// Service for handling device location
class LocationService {
  // Get current GPS position
  Future<Position> getCurrentLocation() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Check if location services are enabled
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      throw LocationException('Location services are disabled');
    }

    // Check permission status
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        throw LocationException('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      throw LocationException(
        'Location permissions are permanently denied',
      );
    }

    // Get current position
    try {
      return await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
        timeLimit: const Duration(seconds: 10),
      );
    } catch (e) {
      throw LocationException('Failed to get current location');
    }
  }

  // Convert coordinates to city name (reverse geocoding)
  Future<String> getCityNameFromCoordinates({
    required double latitude,
    required double longitude,
  }) async {
    try {
      final placemarks = await geocoding.placemarkFromCoordinates(
        latitude,
        longitude,
      );

      if (placemarks.isNotEmpty) {
        final placemark = placemarks.first;
        return placemark.locality ??
            placemark.subLocality ??
            placemark.administrativeArea ??
            'Unknown Location';
      }

      return 'Unknown Location';
    } catch (e) {
      throw LocationException('Failed to get city name');
    }
  }
}
