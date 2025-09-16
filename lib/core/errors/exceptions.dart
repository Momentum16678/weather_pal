// lib/src/core/errors/exceptions.dart
// Custom exceptions thrown by services
class ServerException implements Exception {
  final String message;
  ServerException(this.message);
}

class CacheException implements Exception {
  final String message;
  CacheException(this.message);
}

class LocationException implements Exception {
  final String message;
  LocationException(this.message);
}

// lib/src/core/errors/failures.dart
// Failures returned by repositories (clean architecture pattern)
abstract class Failure {
  final String message;
  const Failure(this.message);
}

class ServerFailure extends Failure {
  const ServerFailure(super.message);
}

class CacheFailure extends Failure {
  const CacheFailure(super.message);
}

class LocationFailure extends Failure {
  const LocationFailure(super.message);
}