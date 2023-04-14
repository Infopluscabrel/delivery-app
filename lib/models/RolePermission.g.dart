// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'RolePermission.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RolePermission _$RolePermissionFromJson(Map<String, dynamic> json) {
  return RolePermission(
    idpermissionrole: json['idpermissionrole'] as int,
    idpermission:
        Permissions.fromJson(json['idpermission'] as Map<String, dynamic>),
    idrole: Role.fromJson(json['idrole'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$RolePermissionToJson(RolePermission instance) =>
    <String, dynamic>{
      'idpermissionrole': instance.idpermissionrole,
      'idpermission': instance.idpermission,
      'idrole': instance.idrole,
    };
