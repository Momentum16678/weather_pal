// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeatherModelImpl _$$WeatherModelImplFromJson(Map<String, dynamic> json) =>
    _$WeatherModelImpl(
      name: json['name'] as String,
      sys: Sys.fromJson(json['sys'] as Map<String, dynamic>),
      main: Main.fromJson(json['main'] as Map<String, dynamic>),
      weather:
          (json['weather'] as List<dynamic>)
              .map(
                (e) => WeatherDescription.fromJson(e as Map<String, dynamic>),
              )
              .toList(),
      wind: Wind.fromJson(json['wind'] as Map<String, dynamic>),
      visibility: (json['visibility'] as num).toInt(),
      dt: (json['dt'] as num).toInt(),
      rain:
          json['rain'] == null
              ? null
              : Rain.fromJson(json['rain'] as Map<String, dynamic>),
      snow:
          json['snow'] == null
              ? null
              : Snow.fromJson(json['snow'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$WeatherModelImplToJson(_$WeatherModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'sys': instance.sys,
      'main': instance.main,
      'weather': instance.weather,
      'wind': instance.wind,
      'visibility': instance.visibility,
      'dt': instance.dt,
      'rain': instance.rain,
      'snow': instance.snow,
    };

_$SysImpl _$$SysImplFromJson(Map<String, dynamic> json) => _$SysImpl(
  country: json['country'] as String,
  sunrise: (json['sunrise'] as num).toInt(),
  sunset: (json['sunset'] as num).toInt(),
);

Map<String, dynamic> _$$SysImplToJson(_$SysImpl instance) => <String, dynamic>{
  'country': instance.country,
  'sunrise': instance.sunrise,
  'sunset': instance.sunset,
};

_$MainImpl _$$MainImplFromJson(Map<String, dynamic> json) => _$MainImpl(
  temp: (json['temp'] as num).toDouble(),
  feelsLike: (json['feels_like'] as num).toDouble(),
  tempMin: (json['temp_min'] as num).toDouble(),
  tempMax: (json['temp_max'] as num).toDouble(),
  pressure: (json['pressure'] as num).toInt(),
  humidity: (json['humidity'] as num).toInt(),
);

Map<String, dynamic> _$$MainImplToJson(_$MainImpl instance) =>
    <String, dynamic>{
      'temp': instance.temp,
      'feels_like': instance.feelsLike,
      'temp_min': instance.tempMin,
      'temp_max': instance.tempMax,
      'pressure': instance.pressure,
      'humidity': instance.humidity,
    };

_$WeatherDescriptionImpl _$$WeatherDescriptionImplFromJson(
  Map<String, dynamic> json,
) => _$WeatherDescriptionImpl(
  main: json['main'] as String,
  description: json['description'] as String,
  icon: json['icon'] as String,
);

Map<String, dynamic> _$$WeatherDescriptionImplToJson(
  _$WeatherDescriptionImpl instance,
) => <String, dynamic>{
  'main': instance.main,
  'description': instance.description,
  'icon': instance.icon,
};

_$WindImpl _$$WindImplFromJson(Map<String, dynamic> json) => _$WindImpl(
  speed: (json['speed'] as num).toDouble(),
  deg: (json['deg'] as num).toInt(),
);

Map<String, dynamic> _$$WindImplToJson(_$WindImpl instance) =>
    <String, dynamic>{'speed': instance.speed, 'deg': instance.deg};

_$RainImpl _$$RainImplFromJson(Map<String, dynamic> json) => _$RainImpl(
  h1: (json['1h'] as num?)?.toDouble(),
  h3: (json['3h'] as num?)?.toDouble(),
);

Map<String, dynamic> _$$RainImplToJson(_$RainImpl instance) =>
    <String, dynamic>{'1h': instance.h1, '3h': instance.h3};

_$SnowImpl _$$SnowImplFromJson(Map<String, dynamic> json) => _$SnowImpl(
  h1: (json['1h'] as num?)?.toDouble(),
  h3: (json['3h'] as num?)?.toDouble(),
);

Map<String, dynamic> _$$SnowImplToJson(_$SnowImpl instance) =>
    <String, dynamic>{'1h': instance.h1, '3h': instance.h3};
