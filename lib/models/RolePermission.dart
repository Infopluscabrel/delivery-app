import 'dart:core';
import 'package:json_annotation/json_annotation.dart';
import 'package:egg_delivery_app/models/Permissions.dart';
import 'package:egg_delivery_app/models/Role.dart';

part 'RolePermission.g.dart';

@JsonSerializable()
class RolePermission{
  RolePermission({ this.idpermissionrole,  this.idpermission, this.idrole});

  int idpermissionrole;
  Permissions idpermission;
  Role idrole;

  factory RolePermission.fromJson(Map<String, dynamic> json) => _$RolePermissionFromJson(json);
  Map<String, dynamic> toJson() => _$RolePermissionToJson(this);
}