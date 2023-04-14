// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'UserLocal.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserLocal _$UserLocalFromJson(Map<String, dynamic> json) {
  return UserLocal(
    iduserlocal: json['iduserlocal'] as int,
    localcode: Localisation.fromJson(json['localcode'] as Map<String, dynamic>),
    usercode: json['usercode'] as String,
  );
}

Map<String, dynamic> _$UserLocalToJson(UserLocal instance) => <String, dynamic>{
      'iduserlocal': instance.iduserlocal,
      'localcode': instance.localcode,
      'usercode': instance.usercode,
    };
