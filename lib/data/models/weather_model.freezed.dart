// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

WeatherModel _$WeatherModelFromJson(Map<String, dynamic> json) {
  return _WeatherModel.fromJson(json);
}

/// @nodoc
mixin _$WeatherModel {
  String get name => throw _privateConstructorUsedError; // City name
  Sys get sys =>
      throw _privateConstructorUsedError; // System data (country, sunrise, sunset)
  Main get main => throw _privateConstructorUsedError; // Main weather data
  List<WeatherDescription> get weather =>
      throw _privateConstructorUsedError; // Weather descriptions
  Wind get wind => throw _privateConstructorUsedError; // Wind data
  int get visibility => throw _privateConstructorUsedError; // Visibility
  int get dt => throw _privateConstructorUsedError; // Unix timestamp
  Rain? get rain => throw _privateConstructorUsedError; // Optional rain data
  Snow? get snow => throw _privateConstructorUsedError;

  /// Serializes this WeatherModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WeatherModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WeatherModelCopyWith<WeatherModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherModelCopyWith<$Res> {
  factory $WeatherModelCopyWith(
    WeatherModel value,
    $Res Function(WeatherModel) then,
  ) = _$WeatherModelCopyWithImpl<$Res, WeatherModel>;
  @useResult
  $Res call({
    String name,
    Sys sys,
    Main main,
    List<WeatherDescription> weather,
    Wind wind,
    int visibility,
    int dt,
    Rain? rain,
    Snow? snow,
  });

  $SysCopyWith<$Res> get sys;
  $MainCopyWith<$Res> get main;
  $WindCopyWith<$Res> get wind;
  $RainCopyWith<$Res>? get rain;
  $SnowCopyWith<$Res>? get snow;
}

/// @nodoc
class _$WeatherModelCopyWithImpl<$Res, $Val extends WeatherModel>
    implements $WeatherModelCopyWith<$Res> {
  _$WeatherModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WeatherModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? sys = null,
    Object? main = null,
    Object? weather = null,
    Object? wind = null,
    Object? visibility = null,
    Object? dt = null,
    Object? rain = freezed,
    Object? snow = freezed,
  }) {
    return _then(
      _value.copyWith(
            name:
                null == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String,
            sys:
                null == sys
                    ? _value.sys
                    : sys // ignore: cast_nullable_to_non_nullable
                        as Sys,
            main:
                null == main
                    ? _value.main
                    : main // ignore: cast_nullable_to_non_nullable
                        as Main,
            weather:
                null == weather
                    ? _value.weather
                    : weather // ignore: cast_nullable_to_non_nullable
                        as List<WeatherDescription>,
            wind:
                null == wind
                    ? _value.wind
                    : wind // ignore: cast_nullable_to_non_nullable
                        as Wind,
            visibility:
                null == visibility
                    ? _value.visibility
                    : visibility // ignore: cast_nullable_to_non_nullable
                        as int,
            dt:
                null == dt
                    ? _value.dt
                    : dt // ignore: cast_nullable_to_non_nullable
                        as int,
            rain:
                freezed == rain
                    ? _value.rain
                    : rain // ignore: cast_nullable_to_non_nullable
                        as Rain?,
            snow:
                freezed == snow
                    ? _value.snow
                    : snow // ignore: cast_nullable_to_non_nullable
                        as Snow?,
          )
          as $Val,
    );
  }

  /// Create a copy of WeatherModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SysCopyWith<$Res> get sys {
    return $SysCopyWith<$Res>(_value.sys, (value) {
      return _then(_value.copyWith(sys: value) as $Val);
    });
  }

  /// Create a copy of WeatherModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MainCopyWith<$Res> get main {
    return $MainCopyWith<$Res>(_value.main, (value) {
      return _then(_value.copyWith(main: value) as $Val);
    });
  }

  /// Create a copy of WeatherModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WindCopyWith<$Res> get wind {
    return $WindCopyWith<$Res>(_value.wind, (value) {
      return _then(_value.copyWith(wind: value) as $Val);
    });
  }

  /// Create a copy of WeatherModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RainCopyWith<$Res>? get rain {
    if (_value.rain == null) {
      return null;
    }

    return $RainCopyWith<$Res>(_value.rain!, (value) {
      return _then(_value.copyWith(rain: value) as $Val);
    });
  }

  /// Create a copy of WeatherModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SnowCopyWith<$Res>? get snow {
    if (_value.snow == null) {
      return null;
    }

    return $SnowCopyWith<$Res>(_value.snow!, (value) {
      return _then(_value.copyWith(snow: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WeatherModelImplCopyWith<$Res>
    implements $WeatherModelCopyWith<$Res> {
  factory _$$WeatherModelImplCopyWith(
    _$WeatherModelImpl value,
    $Res Function(_$WeatherModelImpl) then,
  ) = __$$WeatherModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String name,
    Sys sys,
    Main main,
    List<WeatherDescription> weather,
    Wind wind,
    int visibility,
    int dt,
    Rain? rain,
    Snow? snow,
  });

  @override
  $SysCopyWith<$Res> get sys;
  @override
  $MainCopyWith<$Res> get main;
  @override
  $WindCopyWith<$Res> get wind;
  @override
  $RainCopyWith<$Res>? get rain;
  @override
  $SnowCopyWith<$Res>? get snow;
}

/// @nodoc
class __$$WeatherModelImplCopyWithImpl<$Res>
    extends _$WeatherModelCopyWithImpl<$Res, _$WeatherModelImpl>
    implements _$$WeatherModelImplCopyWith<$Res> {
  __$$WeatherModelImplCopyWithImpl(
    _$WeatherModelImpl _value,
    $Res Function(_$WeatherModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of WeatherModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? sys = null,
    Object? main = null,
    Object? weather = null,
    Object? wind = null,
    Object? visibility = null,
    Object? dt = null,
    Object? rain = freezed,
    Object? snow = freezed,
  }) {
    return _then(
      _$WeatherModelImpl(
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
        sys:
            null == sys
                ? _value.sys
                : sys // ignore: cast_nullable_to_non_nullable
                    as Sys,
        main:
            null == main
                ? _value.main
                : main // ignore: cast_nullable_to_non_nullable
                    as Main,
        weather:
            null == weather
                ? _value._weather
                : weather // ignore: cast_nullable_to_non_nullable
                    as List<WeatherDescription>,
        wind:
            null == wind
                ? _value.wind
                : wind // ignore: cast_nullable_to_non_nullable
                    as Wind,
        visibility:
            null == visibility
                ? _value.visibility
                : visibility // ignore: cast_nullable_to_non_nullable
                    as int,
        dt:
            null == dt
                ? _value.dt
                : dt // ignore: cast_nullable_to_non_nullable
                    as int,
        rain:
            freezed == rain
                ? _value.rain
                : rain // ignore: cast_nullable_to_non_nullable
                    as Rain?,
        snow:
            freezed == snow
                ? _value.snow
                : snow // ignore: cast_nullable_to_non_nullable
                    as Snow?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$WeatherModelImpl extends _WeatherModel {
  const _$WeatherModelImpl({
    required this.name,
    required this.sys,
    required this.main,
    required final List<WeatherDescription> weather,
    required this.wind,
    required this.visibility,
    required this.dt,
    this.rain,
    this.snow,
  }) : _weather = weather,
       super._();

  factory _$WeatherModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeatherModelImplFromJson(json);

  @override
  final String name;
  // City name
  @override
  final Sys sys;
  // System data (country, sunrise, sunset)
  @override
  final Main main;
  // Main weather data
  final List<WeatherDescription> _weather;
  // Main weather data
  @override
  List<WeatherDescription> get weather {
    if (_weather is EqualUnmodifiableListView) return _weather;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weather);
  }

  // Weather descriptions
  @override
  final Wind wind;
  // Wind data
  @override
  final int visibility;
  // Visibility
  @override
  final int dt;
  // Unix timestamp
  @override
  final Rain? rain;
  // Optional rain data
  @override
  final Snow? snow;

  @override
  String toString() {
    return 'WeatherModel(name: $name, sys: $sys, main: $main, weather: $weather, wind: $wind, visibility: $visibility, dt: $dt, rain: $rain, snow: $snow)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.sys, sys) || other.sys == sys) &&
            (identical(other.main, main) || other.main == main) &&
            const DeepCollectionEquality().equals(other._weather, _weather) &&
            (identical(other.wind, wind) || other.wind == wind) &&
            (identical(other.visibility, visibility) ||
                other.visibility == visibility) &&
            (identical(other.dt, dt) || other.dt == dt) &&
            (identical(other.rain, rain) || other.rain == rain) &&
            (identical(other.snow, snow) || other.snow == snow));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    name,
    sys,
    main,
    const DeepCollectionEquality().hash(_weather),
    wind,
    visibility,
    dt,
    rain,
    snow,
  );

  /// Create a copy of WeatherModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherModelImplCopyWith<_$WeatherModelImpl> get copyWith =>
      __$$WeatherModelImplCopyWithImpl<_$WeatherModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherModelImplToJson(this);
  }
}

abstract class _WeatherModel extends WeatherModel {
  const factory _WeatherModel({
    required final String name,
    required final Sys sys,
    required final Main main,
    required final List<WeatherDescription> weather,
    required final Wind wind,
    required final int visibility,
    required final int dt,
    final Rain? rain,
    final Snow? snow,
  }) = _$WeatherModelImpl;
  const _WeatherModel._() : super._();

  factory _WeatherModel.fromJson(Map<String, dynamic> json) =
      _$WeatherModelImpl.fromJson;

  @override
  String get name; // City name
  @override
  Sys get sys; // System data (country, sunrise, sunset)
  @override
  Main get main; // Main weather data
  @override
  List<WeatherDescription> get weather; // Weather descriptions
  @override
  Wind get wind; // Wind data
  @override
  int get visibility; // Visibility
  @override
  int get dt; // Unix timestamp
  @override
  Rain? get rain; // Optional rain data
  @override
  Snow? get snow;

  /// Create a copy of WeatherModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WeatherModelImplCopyWith<_$WeatherModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Sys _$SysFromJson(Map<String, dynamic> json) {
  return _Sys.fromJson(json);
}

/// @nodoc
mixin _$Sys {
  String get country => throw _privateConstructorUsedError;
  int get sunrise => throw _privateConstructorUsedError;
  int get sunset => throw _privateConstructorUsedError;

  /// Serializes this Sys to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Sys
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SysCopyWith<Sys> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SysCopyWith<$Res> {
  factory $SysCopyWith(Sys value, $Res Function(Sys) then) =
      _$SysCopyWithImpl<$Res, Sys>;
  @useResult
  $Res call({String country, int sunrise, int sunset});
}

/// @nodoc
class _$SysCopyWithImpl<$Res, $Val extends Sys> implements $SysCopyWith<$Res> {
  _$SysCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Sys
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? country = null,
    Object? sunrise = null,
    Object? sunset = null,
  }) {
    return _then(
      _value.copyWith(
            country:
                null == country
                    ? _value.country
                    : country // ignore: cast_nullable_to_non_nullable
                        as String,
            sunrise:
                null == sunrise
                    ? _value.sunrise
                    : sunrise // ignore: cast_nullable_to_non_nullable
                        as int,
            sunset:
                null == sunset
                    ? _value.sunset
                    : sunset // ignore: cast_nullable_to_non_nullable
                        as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SysImplCopyWith<$Res> implements $SysCopyWith<$Res> {
  factory _$$SysImplCopyWith(_$SysImpl value, $Res Function(_$SysImpl) then) =
      __$$SysImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String country, int sunrise, int sunset});
}

/// @nodoc
class __$$SysImplCopyWithImpl<$Res> extends _$SysCopyWithImpl<$Res, _$SysImpl>
    implements _$$SysImplCopyWith<$Res> {
  __$$SysImplCopyWithImpl(_$SysImpl _value, $Res Function(_$SysImpl) _then)
    : super(_value, _then);

  /// Create a copy of Sys
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? country = null,
    Object? sunrise = null,
    Object? sunset = null,
  }) {
    return _then(
      _$SysImpl(
        country:
            null == country
                ? _value.country
                : country // ignore: cast_nullable_to_non_nullable
                    as String,
        sunrise:
            null == sunrise
                ? _value.sunrise
                : sunrise // ignore: cast_nullable_to_non_nullable
                    as int,
        sunset:
            null == sunset
                ? _value.sunset
                : sunset // ignore: cast_nullable_to_non_nullable
                    as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SysImpl implements _Sys {
  const _$SysImpl({
    required this.country,
    required this.sunrise,
    required this.sunset,
  });

  factory _$SysImpl.fromJson(Map<String, dynamic> json) =>
      _$$SysImplFromJson(json);

  @override
  final String country;
  @override
  final int sunrise;
  @override
  final int sunset;

  @override
  String toString() {
    return 'Sys(country: $country, sunrise: $sunrise, sunset: $sunset)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SysImpl &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.sunrise, sunrise) || other.sunrise == sunrise) &&
            (identical(other.sunset, sunset) || other.sunset == sunset));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, country, sunrise, sunset);

  /// Create a copy of Sys
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SysImplCopyWith<_$SysImpl> get copyWith =>
      __$$SysImplCopyWithImpl<_$SysImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SysImplToJson(this);
  }
}

abstract class _Sys implements Sys {
  const factory _Sys({
    required final String country,
    required final int sunrise,
    required final int sunset,
  }) = _$SysImpl;

  factory _Sys.fromJson(Map<String, dynamic> json) = _$SysImpl.fromJson;

  @override
  String get country;
  @override
  int get sunrise;
  @override
  int get sunset;

  /// Create a copy of Sys
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SysImplCopyWith<_$SysImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Main _$MainFromJson(Map<String, dynamic> json) {
  return _Main.fromJson(json);
}

/// @nodoc
mixin _$Main {
  double get temp => throw _privateConstructorUsedError;
  @JsonKey(name: 'feels_like')
  double get feelsLike => throw _privateConstructorUsedError; // Map JSON field names
  @JsonKey(name: 'temp_min')
  double get tempMin => throw _privateConstructorUsedError;
  @JsonKey(name: 'temp_max')
  double get tempMax => throw _privateConstructorUsedError;
  int get pressure => throw _privateConstructorUsedError;
  int get humidity => throw _privateConstructorUsedError;

  /// Serializes this Main to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Main
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MainCopyWith<Main> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainCopyWith<$Res> {
  factory $MainCopyWith(Main value, $Res Function(Main) then) =
      _$MainCopyWithImpl<$Res, Main>;
  @useResult
  $Res call({
    double temp,
    @JsonKey(name: 'feels_like') double feelsLike,
    @JsonKey(name: 'temp_min') double tempMin,
    @JsonKey(name: 'temp_max') double tempMax,
    int pressure,
    int humidity,
  });
}

/// @nodoc
class _$MainCopyWithImpl<$Res, $Val extends Main>
    implements $MainCopyWith<$Res> {
  _$MainCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Main
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temp = null,
    Object? feelsLike = null,
    Object? tempMin = null,
    Object? tempMax = null,
    Object? pressure = null,
    Object? humidity = null,
  }) {
    return _then(
      _value.copyWith(
            temp:
                null == temp
                    ? _value.temp
                    : temp // ignore: cast_nullable_to_non_nullable
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
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$MainImplCopyWith<$Res> implements $MainCopyWith<$Res> {
  factory _$$MainImplCopyWith(
    _$MainImpl value,
    $Res Function(_$MainImpl) then,
  ) = __$$MainImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    double temp,
    @JsonKey(name: 'feels_like') double feelsLike,
    @JsonKey(name: 'temp_min') double tempMin,
    @JsonKey(name: 'temp_max') double tempMax,
    int pressure,
    int humidity,
  });
}

/// @nodoc
class __$$MainImplCopyWithImpl<$Res>
    extends _$MainCopyWithImpl<$Res, _$MainImpl>
    implements _$$MainImplCopyWith<$Res> {
  __$$MainImplCopyWithImpl(_$MainImpl _value, $Res Function(_$MainImpl) _then)
    : super(_value, _then);

  /// Create a copy of Main
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temp = null,
    Object? feelsLike = null,
    Object? tempMin = null,
    Object? tempMax = null,
    Object? pressure = null,
    Object? humidity = null,
  }) {
    return _then(
      _$MainImpl(
        temp:
            null == temp
                ? _value.temp
                : temp // ignore: cast_nullable_to_non_nullable
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
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$MainImpl implements _Main {
  const _$MainImpl({
    required this.temp,
    @JsonKey(name: 'feels_like') required this.feelsLike,
    @JsonKey(name: 'temp_min') required this.tempMin,
    @JsonKey(name: 'temp_max') required this.tempMax,
    required this.pressure,
    required this.humidity,
  });

  factory _$MainImpl.fromJson(Map<String, dynamic> json) =>
      _$$MainImplFromJson(json);

  @override
  final double temp;
  @override
  @JsonKey(name: 'feels_like')
  final double feelsLike;
  // Map JSON field names
  @override
  @JsonKey(name: 'temp_min')
  final double tempMin;
  @override
  @JsonKey(name: 'temp_max')
  final double tempMax;
  @override
  final int pressure;
  @override
  final int humidity;

  @override
  String toString() {
    return 'Main(temp: $temp, feelsLike: $feelsLike, tempMin: $tempMin, tempMax: $tempMax, pressure: $pressure, humidity: $humidity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainImpl &&
            (identical(other.temp, temp) || other.temp == temp) &&
            (identical(other.feelsLike, feelsLike) ||
                other.feelsLike == feelsLike) &&
            (identical(other.tempMin, tempMin) || other.tempMin == tempMin) &&
            (identical(other.tempMax, tempMax) || other.tempMax == tempMax) &&
            (identical(other.pressure, pressure) ||
                other.pressure == pressure) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    temp,
    feelsLike,
    tempMin,
    tempMax,
    pressure,
    humidity,
  );

  /// Create a copy of Main
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MainImplCopyWith<_$MainImpl> get copyWith =>
      __$$MainImplCopyWithImpl<_$MainImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MainImplToJson(this);
  }
}

abstract class _Main implements Main {
  const factory _Main({
    required final double temp,
    @JsonKey(name: 'feels_like') required final double feelsLike,
    @JsonKey(name: 'temp_min') required final double tempMin,
    @JsonKey(name: 'temp_max') required final double tempMax,
    required final int pressure,
    required final int humidity,
  }) = _$MainImpl;

  factory _Main.fromJson(Map<String, dynamic> json) = _$MainImpl.fromJson;

  @override
  double get temp;
  @override
  @JsonKey(name: 'feels_like')
  double get feelsLike; // Map JSON field names
  @override
  @JsonKey(name: 'temp_min')
  double get tempMin;
  @override
  @JsonKey(name: 'temp_max')
  double get tempMax;
  @override
  int get pressure;
  @override
  int get humidity;

  /// Create a copy of Main
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MainImplCopyWith<_$MainImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WeatherDescription _$WeatherDescriptionFromJson(Map<String, dynamic> json) {
  return _WeatherDescription.fromJson(json);
}

/// @nodoc
mixin _$WeatherDescription {
  String get main => throw _privateConstructorUsedError; // e.g., "Rain"
  String get description =>
      throw _privateConstructorUsedError; // e.g., "light rain"
  String get icon => throw _privateConstructorUsedError;

  /// Serializes this WeatherDescription to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WeatherDescription
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WeatherDescriptionCopyWith<WeatherDescription> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherDescriptionCopyWith<$Res> {
  factory $WeatherDescriptionCopyWith(
    WeatherDescription value,
    $Res Function(WeatherDescription) then,
  ) = _$WeatherDescriptionCopyWithImpl<$Res, WeatherDescription>;
  @useResult
  $Res call({String main, String description, String icon});
}

/// @nodoc
class _$WeatherDescriptionCopyWithImpl<$Res, $Val extends WeatherDescription>
    implements $WeatherDescriptionCopyWith<$Res> {
  _$WeatherDescriptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WeatherDescription
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? main = null,
    Object? description = null,
    Object? icon = null,
  }) {
    return _then(
      _value.copyWith(
            main:
                null == main
                    ? _value.main
                    : main // ignore: cast_nullable_to_non_nullable
                        as String,
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
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$WeatherDescriptionImplCopyWith<$Res>
    implements $WeatherDescriptionCopyWith<$Res> {
  factory _$$WeatherDescriptionImplCopyWith(
    _$WeatherDescriptionImpl value,
    $Res Function(_$WeatherDescriptionImpl) then,
  ) = __$$WeatherDescriptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String main, String description, String icon});
}

/// @nodoc
class __$$WeatherDescriptionImplCopyWithImpl<$Res>
    extends _$WeatherDescriptionCopyWithImpl<$Res, _$WeatherDescriptionImpl>
    implements _$$WeatherDescriptionImplCopyWith<$Res> {
  __$$WeatherDescriptionImplCopyWithImpl(
    _$WeatherDescriptionImpl _value,
    $Res Function(_$WeatherDescriptionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of WeatherDescription
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? main = null,
    Object? description = null,
    Object? icon = null,
  }) {
    return _then(
      _$WeatherDescriptionImpl(
        main:
            null == main
                ? _value.main
                : main // ignore: cast_nullable_to_non_nullable
                    as String,
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
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$WeatherDescriptionImpl implements _WeatherDescription {
  const _$WeatherDescriptionImpl({
    required this.main,
    required this.description,
    required this.icon,
  });

  factory _$WeatherDescriptionImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeatherDescriptionImplFromJson(json);

  @override
  final String main;
  // e.g., "Rain"
  @override
  final String description;
  // e.g., "light rain"
  @override
  final String icon;

  @override
  String toString() {
    return 'WeatherDescription(main: $main, description: $description, icon: $icon)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherDescriptionImpl &&
            (identical(other.main, main) || other.main == main) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.icon, icon) || other.icon == icon));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, main, description, icon);

  /// Create a copy of WeatherDescription
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherDescriptionImplCopyWith<_$WeatherDescriptionImpl> get copyWith =>
      __$$WeatherDescriptionImplCopyWithImpl<_$WeatherDescriptionImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherDescriptionImplToJson(this);
  }
}

abstract class _WeatherDescription implements WeatherDescription {
  const factory _WeatherDescription({
    required final String main,
    required final String description,
    required final String icon,
  }) = _$WeatherDescriptionImpl;

  factory _WeatherDescription.fromJson(Map<String, dynamic> json) =
      _$WeatherDescriptionImpl.fromJson;

  @override
  String get main; // e.g., "Rain"
  @override
  String get description; // e.g., "light rain"
  @override
  String get icon;

  /// Create a copy of WeatherDescription
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WeatherDescriptionImplCopyWith<_$WeatherDescriptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Wind _$WindFromJson(Map<String, dynamic> json) {
  return _Wind.fromJson(json);
}

/// @nodoc
mixin _$Wind {
  double get speed => throw _privateConstructorUsedError;
  int get deg => throw _privateConstructorUsedError;

  /// Serializes this Wind to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Wind
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WindCopyWith<Wind> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WindCopyWith<$Res> {
  factory $WindCopyWith(Wind value, $Res Function(Wind) then) =
      _$WindCopyWithImpl<$Res, Wind>;
  @useResult
  $Res call({double speed, int deg});
}

/// @nodoc
class _$WindCopyWithImpl<$Res, $Val extends Wind>
    implements $WindCopyWith<$Res> {
  _$WindCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Wind
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? speed = null, Object? deg = null}) {
    return _then(
      _value.copyWith(
            speed:
                null == speed
                    ? _value.speed
                    : speed // ignore: cast_nullable_to_non_nullable
                        as double,
            deg:
                null == deg
                    ? _value.deg
                    : deg // ignore: cast_nullable_to_non_nullable
                        as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$WindImplCopyWith<$Res> implements $WindCopyWith<$Res> {
  factory _$$WindImplCopyWith(
    _$WindImpl value,
    $Res Function(_$WindImpl) then,
  ) = __$$WindImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double speed, int deg});
}

/// @nodoc
class __$$WindImplCopyWithImpl<$Res>
    extends _$WindCopyWithImpl<$Res, _$WindImpl>
    implements _$$WindImplCopyWith<$Res> {
  __$$WindImplCopyWithImpl(_$WindImpl _value, $Res Function(_$WindImpl) _then)
    : super(_value, _then);

  /// Create a copy of Wind
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? speed = null, Object? deg = null}) {
    return _then(
      _$WindImpl(
        speed:
            null == speed
                ? _value.speed
                : speed // ignore: cast_nullable_to_non_nullable
                    as double,
        deg:
            null == deg
                ? _value.deg
                : deg // ignore: cast_nullable_to_non_nullable
                    as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$WindImpl implements _Wind {
  const _$WindImpl({required this.speed, required this.deg});

  factory _$WindImpl.fromJson(Map<String, dynamic> json) =>
      _$$WindImplFromJson(json);

  @override
  final double speed;
  @override
  final int deg;

  @override
  String toString() {
    return 'Wind(speed: $speed, deg: $deg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WindImpl &&
            (identical(other.speed, speed) || other.speed == speed) &&
            (identical(other.deg, deg) || other.deg == deg));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, speed, deg);

  /// Create a copy of Wind
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WindImplCopyWith<_$WindImpl> get copyWith =>
      __$$WindImplCopyWithImpl<_$WindImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WindImplToJson(this);
  }
}

abstract class _Wind implements Wind {
  const factory _Wind({required final double speed, required final int deg}) =
      _$WindImpl;

  factory _Wind.fromJson(Map<String, dynamic> json) = _$WindImpl.fromJson;

  @override
  double get speed;
  @override
  int get deg;

  /// Create a copy of Wind
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WindImplCopyWith<_$WindImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Rain _$RainFromJson(Map<String, dynamic> json) {
  return _Rain.fromJson(json);
}

/// @nodoc
mixin _$Rain {
  @JsonKey(name: '1h')
  double? get h1 => throw _privateConstructorUsedError; // Rain volume for last 1 hour
  @JsonKey(name: '3h')
  double? get h3 => throw _privateConstructorUsedError;

  /// Serializes this Rain to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Rain
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RainCopyWith<Rain> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RainCopyWith<$Res> {
  factory $RainCopyWith(Rain value, $Res Function(Rain) then) =
      _$RainCopyWithImpl<$Res, Rain>;
  @useResult
  $Res call({@JsonKey(name: '1h') double? h1, @JsonKey(name: '3h') double? h3});
}

/// @nodoc
class _$RainCopyWithImpl<$Res, $Val extends Rain>
    implements $RainCopyWith<$Res> {
  _$RainCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Rain
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? h1 = freezed, Object? h3 = freezed}) {
    return _then(
      _value.copyWith(
            h1:
                freezed == h1
                    ? _value.h1
                    : h1 // ignore: cast_nullable_to_non_nullable
                        as double?,
            h3:
                freezed == h3
                    ? _value.h3
                    : h3 // ignore: cast_nullable_to_non_nullable
                        as double?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$RainImplCopyWith<$Res> implements $RainCopyWith<$Res> {
  factory _$$RainImplCopyWith(
    _$RainImpl value,
    $Res Function(_$RainImpl) then,
  ) = __$$RainImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: '1h') double? h1, @JsonKey(name: '3h') double? h3});
}

/// @nodoc
class __$$RainImplCopyWithImpl<$Res>
    extends _$RainCopyWithImpl<$Res, _$RainImpl>
    implements _$$RainImplCopyWith<$Res> {
  __$$RainImplCopyWithImpl(_$RainImpl _value, $Res Function(_$RainImpl) _then)
    : super(_value, _then);

  /// Create a copy of Rain
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? h1 = freezed, Object? h3 = freezed}) {
    return _then(
      _$RainImpl(
        h1:
            freezed == h1
                ? _value.h1
                : h1 // ignore: cast_nullable_to_non_nullable
                    as double?,
        h3:
            freezed == h3
                ? _value.h3
                : h3 // ignore: cast_nullable_to_non_nullable
                    as double?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RainImpl implements _Rain {
  const _$RainImpl({
    @JsonKey(name: '1h') this.h1,
    @JsonKey(name: '3h') this.h3,
  });

  factory _$RainImpl.fromJson(Map<String, dynamic> json) =>
      _$$RainImplFromJson(json);

  @override
  @JsonKey(name: '1h')
  final double? h1;
  // Rain volume for last 1 hour
  @override
  @JsonKey(name: '3h')
  final double? h3;

  @override
  String toString() {
    return 'Rain(h1: $h1, h3: $h3)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RainImpl &&
            (identical(other.h1, h1) || other.h1 == h1) &&
            (identical(other.h3, h3) || other.h3 == h3));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, h1, h3);

  /// Create a copy of Rain
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RainImplCopyWith<_$RainImpl> get copyWith =>
      __$$RainImplCopyWithImpl<_$RainImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RainImplToJson(this);
  }
}

abstract class _Rain implements Rain {
  const factory _Rain({
    @JsonKey(name: '1h') final double? h1,
    @JsonKey(name: '3h') final double? h3,
  }) = _$RainImpl;

  factory _Rain.fromJson(Map<String, dynamic> json) = _$RainImpl.fromJson;

  @override
  @JsonKey(name: '1h')
  double? get h1; // Rain volume for last 1 hour
  @override
  @JsonKey(name: '3h')
  double? get h3;

  /// Create a copy of Rain
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RainImplCopyWith<_$RainImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Snow _$SnowFromJson(Map<String, dynamic> json) {
  return _Snow.fromJson(json);
}

/// @nodoc
mixin _$Snow {
  @JsonKey(name: '1h')
  double? get h1 => throw _privateConstructorUsedError;
  @JsonKey(name: '3h')
  double? get h3 => throw _privateConstructorUsedError;

  /// Serializes this Snow to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Snow
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SnowCopyWith<Snow> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SnowCopyWith<$Res> {
  factory $SnowCopyWith(Snow value, $Res Function(Snow) then) =
      _$SnowCopyWithImpl<$Res, Snow>;
  @useResult
  $Res call({@JsonKey(name: '1h') double? h1, @JsonKey(name: '3h') double? h3});
}

/// @nodoc
class _$SnowCopyWithImpl<$Res, $Val extends Snow>
    implements $SnowCopyWith<$Res> {
  _$SnowCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Snow
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? h1 = freezed, Object? h3 = freezed}) {
    return _then(
      _value.copyWith(
            h1:
                freezed == h1
                    ? _value.h1
                    : h1 // ignore: cast_nullable_to_non_nullable
                        as double?,
            h3:
                freezed == h3
                    ? _value.h3
                    : h3 // ignore: cast_nullable_to_non_nullable
                        as double?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SnowImplCopyWith<$Res> implements $SnowCopyWith<$Res> {
  factory _$$SnowImplCopyWith(
    _$SnowImpl value,
    $Res Function(_$SnowImpl) then,
  ) = __$$SnowImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: '1h') double? h1, @JsonKey(name: '3h') double? h3});
}

/// @nodoc
class __$$SnowImplCopyWithImpl<$Res>
    extends _$SnowCopyWithImpl<$Res, _$SnowImpl>
    implements _$$SnowImplCopyWith<$Res> {
  __$$SnowImplCopyWithImpl(_$SnowImpl _value, $Res Function(_$SnowImpl) _then)
    : super(_value, _then);

  /// Create a copy of Snow
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? h1 = freezed, Object? h3 = freezed}) {
    return _then(
      _$SnowImpl(
        h1:
            freezed == h1
                ? _value.h1
                : h1 // ignore: cast_nullable_to_non_nullable
                    as double?,
        h3:
            freezed == h3
                ? _value.h3
                : h3 // ignore: cast_nullable_to_non_nullable
                    as double?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SnowImpl implements _Snow {
  const _$SnowImpl({
    @JsonKey(name: '1h') this.h1,
    @JsonKey(name: '3h') this.h3,
  });

  factory _$SnowImpl.fromJson(Map<String, dynamic> json) =>
      _$$SnowImplFromJson(json);

  @override
  @JsonKey(name: '1h')
  final double? h1;
  @override
  @JsonKey(name: '3h')
  final double? h3;

  @override
  String toString() {
    return 'Snow(h1: $h1, h3: $h3)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SnowImpl &&
            (identical(other.h1, h1) || other.h1 == h1) &&
            (identical(other.h3, h3) || other.h3 == h3));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, h1, h3);

  /// Create a copy of Snow
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SnowImplCopyWith<_$SnowImpl> get copyWith =>
      __$$SnowImplCopyWithImpl<_$SnowImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SnowImplToJson(this);
  }
}

abstract class _Snow implements Snow {
  const factory _Snow({
    @JsonKey(name: '1h') final double? h1,
    @JsonKey(name: '3h') final double? h3,
  }) = _$SnowImpl;

  factory _Snow.fromJson(Map<String, dynamic> json) = _$SnowImpl.fromJson;

  @override
  @JsonKey(name: '1h')
  double? get h1;
  @override
  @JsonKey(name: '3h')
  double? get h3;

  /// Create a copy of Snow
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SnowImplCopyWith<_$SnowImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
