// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Localisation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Localisation _$LocalisationFromJson(Map<String, dynamic> json) {
  return Localisation(
    localcode: json['localcode'] as int,
    longitude: (json['longitude'] as num).toDouble(),
    latitude: (json['latitude'] as num).toDouble(),
    localdate: DateTime.parse(json['localdate'] as String),
    localquatier: json['localquatier'] as String,
    userLocalList: (json['userLocalList'] as List<dynamic>)
        .map((e) => UserLocal.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$LocalisationToJson(Localisation instance) =>
    <String, dynamic>{
      'localcode': instance.localcode,
      'longitude': instance.longitude,
      'latitude': instance.latitude,
      'localdate': instance.localdate.toIso8601String(),
      'localquatier': instance.localquatier,
      'userLocalList': instance.userLocalList,
    };
