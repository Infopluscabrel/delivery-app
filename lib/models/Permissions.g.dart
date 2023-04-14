// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Permissions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Permissions _$PermissionsFromJson(Map<String, dynamic> json) {
  return Permissions(
    idpermission: json['idpermission'] as int,
    labelpermission: json['labelpermission'] as String,
    descpermission: json['descpermission'] as String,
    rolePermissionList: (json['rolePermissionList'] as List<dynamic>)
        .map((e) => RolePermission.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$PermissionsToJson(Permissions instance) =>
    <String, dynamic>{
      'idpermission': instance.idpermission,
      'labelpermission': instance.labelpermission,
      'descpermission': instance.descpermission,
      'rolePermissionList': instance.rolePermissionList,
    };
