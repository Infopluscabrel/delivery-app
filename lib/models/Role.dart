import 'dart:core';
import 'package:json_annotation/json_annotation.dart';
import 'package:egg_delivery_app/models/RolePermission.dart';
import 'package:egg_delivery_app/models/UserRole.dart';

part 'Role.g.dart';

@JsonSerializable()
class Role{
  Role({ this.idrole,  this.labelrole, this.descrole,  this.userRoleList,
     this.rolePermissionList});

  int idrole;
  String labelrole;
  String descrole;
  List<RolePermission> rolePermissionList;
  List<UserRole> userRoleList;

  factory Role.fromJson(Map<String, dynamic> json) => _$RoleFromJson(json);
  Map<String, dynamic> toJson() => _$RoleToJson(this);

}