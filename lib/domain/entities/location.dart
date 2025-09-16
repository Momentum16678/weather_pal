import 'package:freezed_annotation/freezed_annotation.dart';
part 'location.freezed.dart';

// Location entity for saved cities
@freezed
class Location with _$Location {
  const factory Location({
    required String id,              // Unique identifier
    required String cityName,
    required String country,
    required double latitude,        // For API calls
    required double longitude,       // For API calls
    DateTime? lastUpdated,          // Last weather update time
  }) = _Location;
}