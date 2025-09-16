// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$Weather {
  String get cityName => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  double get temperature =>
      throw _privateConstructorUsedError; // Current temp in Celsius
  double get feelsLike =>
      throw _privateConstructorUsedError; // Feels like temperature
  double get tempMin =>
      throw _privateConstructorUsedError; // Minimum temperature
  double get tempMax =>
      throw _privateConstructorUsedError; // Maximum temperature
  int get pressure =>
      throw _privateConstructorUsedError; // Atmospheric pressure
  int get humidity => throw _privateConstructorUsedError; // Humidity percentage
  String get description =>
      throw _privateConstructorUsedError; // Weather description
  String get icon => throw _privateConstructorUsedError; // Weather icon code
  double get windSpeed =>
      throw _privateConstructorUsedError; // Wind speed in m/s
  int get windDeg =>
      throw _privateConstructorUsedError; // Wind direction in degrees
  DateTime get dateTime =>
      throw _privateConstructorUsedError; // Measurement time
  int get visibility =>
      throw _privateConstructorUsedError; // Visibility in meters
  double? get rain =>
      throw _privateConstructorUsedError; // Rain volume (optional)
  double? get snow => throw _privateConstructorUsedError;

  /// Create a copy of Weather
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WeatherCopyWith<Weather> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherCopyWith<$Res> {
  factory $WeatherCopyWith(Weather value, $Res Function(Weather) then) =
      _$WeatherCopyWithImpl<$Res, Weather>;
  @useResult
  $Res call({
    String cityName,
    String country,
    double temperature,
    double feelsLike,
    double tempMin,
    double tempMax,
    int pressure,
    int humidity,
    String description,
    String icon,
    double windSpeed,
    int windDeg,
    DateTime dateTime,
    int visibility,
    double? rain,
    double? snow,
  });
}

/// @nodoc
class _$WeatherCopyWithImpl<$Res, $Val extends Weather>
    implements $WeatherCopyWith<$Res> {
  _$WeatherCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Weather
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cityName = null,
    Object? country = null,
    Object? temperature = null,
    Object? feelsLike = null,
    Object? tempMin = null,
    Object? tempMax = null,
    Object? pressure = null,
    Object? humidity = null,
    Object? description = null,
    Object? icon = null,
    Object? windSpeed = null,
    Object? windDeg = null,
    Object? dateTime = null,
    Object? visibility = null,
    Object? rain = freezed,
    Object? snow = freezed,
  }) {
    return _then(
      _value.copyWith(
            cityName:
                null == cityName
                    ? _value.cityName
                    : cityName // ignore: cast_nullable_to_non_nullable
                        as String,
            country:
                null == country
                    ? _value.country
                    : country // ignore: cast_nullable_to_non_nullable
                        as String,
            temperature:
                null == temperature
                    ? _value.temperature
                    : temperature // ignore: cast_nullable_to_non_nullable
                        as double,
            feelsLike:
                null == feelsLike
                    ? _value.feelsLike
                    : feelsLike // ignore: cast_nullable_to_non_nullable
                        as double,
            tempMin:
                null == tempMin
                    ? _value.tempMin
                    : tempMin // ignore: cast_nullable_to_non_nullable
                        as double,
            tempMax:
                null == tempMax
                    ? _value.tempMax
                    : tempMax // ignore: cast_nullable_to_non_nullable
                        as double,
            pressure:
                null == pressure
                    ? _value.pressure
                    : pressure // ignore: cast_nullable_to_non_nullable
                        as int,
            humidity:
                null == humidity
                    ? _value.humidity
                    : humidity // ignore: cast_nullable_to_non_nullable
                        as int,
            description:
                null == description
                    ? _value.description
                    : description // ignore: cast_nullable_to_non_nullable
                        as String,
            icon:
                null == icon
                    ? _value.icon
                    : icon // ignore: cast_nullable_to_non_nullable
                        as String,
            windSpeed:
                null == windSpeed
                    ? _value.windSpeed
                    : windSpeed // ignore: cast_nullable_to_non_nullable
                        as double,
            windDeg:
                null == windDeg
                    ? _value.windDeg
                    : windDeg // ignore: cast_nullable_to_non_nullable
                        as int,
            dateTime:
                null == dateTime
                    ? _value.dateTime
                    : dateTime // ignore: cast_nullable_to_non_nullable
                        as DateTime,
            visibility:
                null == visibility
                    ? _value.visibility
                    : visibility // ignore: cast_nullable_to_non_nullable
                        as int,
            rain:
                freezed == rain
                    ? _value.rain
                    : rain // ignore: cast_nullable_to_non_nullable
                        as double?,
            snow:
                freezed == snow
                    ? _value.snow
                    : snow // ignore: cast_nullable_to_non_nullable
                        as double?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$WeatherImplCopyWith<$Res> implements $WeatherCopyWith<$Res> {
  factory _$$WeatherImplCopyWith(
    _$WeatherImpl value,
    $Res Function(_$WeatherImpl) then,
  ) = __$$WeatherImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String cityName,
    String country,
    double temperature,
    double feelsLike,
    double tempMin,
    double tempMax,
    int pressure,
    int humidity,
    String description,
    String icon,
    double windSpeed,
    int windDeg,
    DateTime dateTime,
    int visibility,
    double? rain,
    double? snow,
  });
}

/// @nodoc
class __$$WeatherImplCopyWithImpl<$Res>
    extends _$WeatherCopyWithImpl<$Res, _$WeatherImpl>
    implements _$$WeatherImplCopyWith<$Res> {
  __$$WeatherImplCopyWithImpl(
    _$WeatherImpl _value,
    $Res Function(_$WeatherImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Weather
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cityName = null,
    Object? country = null,
    Object? temperature = null,
    Object? feelsLike = null,
    Object? tempMin = null,
    Object? tempMax = null,
    Object? pressure = null,
    Object? humidity = null,
    Object? description = null,
    Object? icon = null,
    Object? windSpeed = null,
    Object? windDeg = null,
    Object? dateTime = null,
    Object? visibility = null,
    Object? rain = freezed,
    Object? snow = freezed,
  }) {
    return _then(
      _$WeatherImpl(
        cityName:
            null == cityName
                ? _value.cityName
                : cityName // ignore: cast_nullable_to_non_nullable
                    as String,
        country:
            null == country
                ? _value.country
                : country // ignore: cast_nullable_to_non_nullable
                    as String,
        temperature:
            null == temperature
                ? _value.temperature
                : temperature // ignore: cast_nullable_to_non_nullable
                    as double,
        feelsLike:
            null == feelsLike
                ? _value.feelsLike
                : feelsLike // ignore: cast_nullable_to_non_nullable
                    as double,
        tempMin:
            null == tempMin
                ? _value.tempMin
                : tempMin // ignore: cast_nullable_to_non_nullable
                    as double,
        tempMax:
            null == tempMax
                ? _value.tempMax
                : tempMax // ignore: cast_nullable_to_non_nullable
                    as double,
        pressure:
            null == pressure
                ? _value.pressure
                : pressure // ignore: cast_nullable_to_non_nullable
                    as int,
        humidity:
            null == humidity
                ? _value.humidity
                : humidity // ignore: cast_nullable_to_non_nullable
                    as int,
        description:
            null == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                    as String,
        icon:
            null == icon
                ? _value.icon
                : icon // ignore: cast_nullable_to_non_nullable
                    as String,
        windSpeed:
            null == windSpeed
                ? _value.windSpeed
                : windSpeed // ignore: cast_nullable_to_non_nullable
                    as double,
        windDeg:
            null == windDeg
                ? _value.windDeg
                : windDeg // ignore: cast_nullable_to_non_nullable
                    as int,
        dateTime:
            null == dateTime
                ? _value.dateTime
                : dateTime // ignore: cast_nullable_to_non_nullable
                    as DateTime,
        visibility:
            null == visibility
                ? _value.visibility
                : visibility // ignore: cast_nullable_to_non_nullable
                    as int,
        rain:
            freezed == rain
                ? _value.rain
                : rain // ignore: cast_nullable_to_non_nullable
                    as double?,
        snow:
            freezed == snow
                ? _value.snow
                : snow // ignore: cast_nullable_to_non_nullable
                    as double?,
      ),
    );
  }
}

/// @nodoc

class _$WeatherImpl implements _Weather {
  const _$WeatherImpl({
    required this.cityName,
    required this.country,
    required this.temperature,
    required this.feelsLike,
    required this.tempMin,
    required this.tempMax,
    required this.pressure,
    required this.humidity,
    required this.description,
    required this.icon,
    required this.windSpeed,
    required this.windDeg,
    required this.dateTime,
    required this.visibility,
    this.rain,
    this.snow,
  });

  @override
  final String cityName;
  @override
  final String country;
  @override
  final double temperature;
  // Current temp in Celsius
  @override
  final double feelsLike;
  // Feels like temperature
  @override
  final double tempMin;
  // Minimum temperature
  @override
  final double tempMax;
  // Maximum temperature
  @override
  final int pressure;
  // Atmospheric pressure
  @override
  final int humidity;
  // Humidity percentage
  @override
  final String description;
  // Weather description
  @override
  final String icon;
  // Weather icon code
  @override
  final double windSpeed;
  // Wind speed in m/s
  @override
  final int windDeg;
  // Wind direction in degrees
  @override
  final DateTime dateTime;
  // Measurement time
  @override
  final int visibility;
  // Visibility in meters
  @override
  final double? rain;
  // Rain volume (optional)
  @override
  final double? snow;

  @override
  String toString() {
    return 'Weather(cityName: $cityName, country: $country, temperature: $temperature, feelsLike: $feelsLike, tempMin: $tempMin, tempMax: $tempMax, pressure: $pressure, humidity: $humidity, description: $description, icon: $icon, windSpeed: $windSpeed, windDeg: $windDeg, dateTime: $dateTime, visibility: $visibility, rain: $rain, snow: $snow)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherImpl &&
            (identical(other.cityName, cityName) ||
                other.cityName == cityName) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.temperature, temperature) ||
                other.temperature == temperature) &&
            (identical(other.feelsLike, feelsLike) ||
                other.feelsLike == feelsLike) &&
            (identical(other.tempMin, tempMin) || other.tempMin == tempMin) &&
            (identical(other.tempMax, tempMax) || other.tempMax == tempMax) &&
            (identical(other.pressure, pressure) ||
                other.pressure == pressure) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.windSpeed, windSpeed) ||
                other.windSpeed == windSpeed) &&
            (identical(other.windDeg, windDeg) || other.windDeg == windDeg) &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime) &&
            (identical(other.visibility, visibility) ||
                other.visibility == visibility) &&
            (identical(other.rain, rain) || other.rain == rain) &&
            (identical(other.snow, snow) || other.snow == snow));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    cityName,
    country,
    temperature,
    feelsLike,
    tempMin,
    tempMax,
    pressure,
    humidity,
    description,
    icon,
    windSpeed,
    windDeg,
    dateTime,
    visibility,
    rain,
    snow,
  );

  /// Create a copy of Weather
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherImplCopyWith<_$WeatherImpl> get copyWith =>
      __$$WeatherImplCopyWithImpl<_$WeatherImpl>(this, _$identity);
}

abstract class _Weather implements Weather {
  const factory _Weather({
    required final String cityName,
    required final String country,
    required final double temperature,
    required final double feelsLike,
    required final double tempMin,
    required final double tempMax,
    required final int pressure,
    required final int humidity,
    required final String description,
    required final String icon,
    required final double windSpeed,
    required final int windDeg,
    required final DateTime dateTime,
    required final int visibility,
    final double? rain,
    final double? snow,
  }) = _$WeatherImpl;

  @override
  String get cityName;
  @override
  String get country;
  @override
  double get temperature; // Current temp in Celsius
  @override
  double get feelsLike; // Feels like temperature
  @override
  double get tempMin; // Minimum temperature
  @override
  double get tempMax; // Maximum temperature
  @override
  int get pressure; // Atmospheric pressure
  @override
  int get humidity; // Humidity percentage
  @override
  String get description; // Weather description
  @override
  String get icon; // Weather icon code
  @override
  double get windSpeed; // Wind speed in m/s
  @override
  int get windDeg; // Wind direction in degrees
  @override
  DateTime get dateTime; // Measurement time
  @override
  int get visibility; // Visibility in meters
  @override
  double? get rain; // Rain volume (optional)
  @override
  double? get snow;

  /// Create a copy of Weather
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WeatherImplCopyWith<_$WeatherImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
