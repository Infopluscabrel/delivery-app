// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Role.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Role _$RoleFromJson(Map<String, dynamic> json) {
  return Role(
    idrole: json['idrole'] as int,
    labelrole: json['labelrole'] as String,
    descrole: json['descrole'] as String,
    userRoleList: (json['userRoleList'] as List<dynamic>)
        .map((e) => UserRole.fromJson(e as Map<String, dynamic>))
        .toList(),
    rolePermissionList: (json['rolePermissionList'] as List<dynamic>)
        .map((e) => RolePermission.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$RoleToJson(Role instance) => <String, dynamic>{
      'idrole': instance.idrole,
      'labelrole': instance.labelrole,
      'descrole': instance.descrole,
      'rolePermissionList': instance.rolePermissionList,
      'userRoleList': instance.userRoleList,
    };
