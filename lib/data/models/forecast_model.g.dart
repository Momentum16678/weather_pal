// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ForecastModelImpl _$$ForecastModelImplFromJson(Map<String, dynamic> json) =>
    _$ForecastModelImpl(
      city: City.fromJson(json['city'] as Map<String, dynamic>),
      list:
          (json['list'] as List<dynamic>)
              .map((e) => ForecastItem.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$$ForecastModelImplToJson(_$ForecastModelImpl instance) =>
    <String, dynamic>{'city': instance.city, 'list': instance.list};

_$CityImpl _$$CityImplFromJson(Map<String, dynamic> json) => _$CityImpl(
  name: json['name'] as String,
  country: json['country'] as String,
  coord: Coord.fromJson(json['coord'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$CityImplToJson(_$CityImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'country': instance.country,
      'coord': instance.coord,
    };

_$CoordImpl _$$CoordImplFromJson(Map<String, dynamic> json) => _$CoordImpl(
  lat: (json['lat'] as num).toDouble(),
  lon: (json['lon'] as num).toDouble(),
);

Map<String, dynamic> _$$CoordImplToJson(_$CoordImpl instance) =>
    <String, dynamic>{'lat': instance.lat, 'lon': instance.lon};

_$ForecastItemImpl _$$ForecastItemImplFromJson(Map<String, dynamic> json) =>
    _$ForecastItemImpl(
      dt: (json['dt'] as num).toInt(),
      main: Main.fromJson(json['main'] as Map<String, dynamic>),
      weather:
          (json['weather'] as List<dynamic>)
              .map(
                (e) => WeatherDescription.fromJson(e as Map<String, dynamic>),
              )
              .toList(),
      wind: Wind.fromJson(json['wind'] as Map<String, dynamic>),
      visibility: (json['visibility'] as num).toInt(),
      rain:
          json['rain'] == null
              ? null
              : Rain.fromJson(json['rain'] as Map<String, dynamic>),
      snow:
          json['snow'] == null
              ? null
              : Snow.fromJson(json['snow'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ForecastItemImplToJson(_$ForecastItemImpl instance) =>
    <String, dynamic>{
      'dt': instance.dt,
      'main': instance.main,
      'weather': instance.weather,
      'wind': instance.wind,
      'visibility': instance.visibility,
      'rain': instance.rain,
      'snow': instance.snow,
    };
