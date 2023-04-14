// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'UserRole.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserRole _$UserRoleFromJson(Map<String, dynamic> json) {
  return UserRole(
    iduserrole: json['iduserrole'] as int,
    idrole: Role.fromJson(json['idrole'] as Map<String, dynamic>),
    usercode: User.fromJson(json['usercode'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$UserRoleToJson(UserRole instance) => <String, dynamic>{
      'iduserrole': instance.iduserrole,
      'idrole': instance.idrole,
      'usercode': instance.usercode,
    };
