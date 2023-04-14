import 'dart:core';
import 'package:json_annotation/json_annotation.dart';
import 'package:egg_delivery_app/models/User.dart';
import 'package:egg_delivery_app/models/Role.dart';

part 'UserRole.g.dart';

@JsonSerializable()
class UserRole{
  UserRole({ this.iduserrole,  this.idrole,  this.usercode});

  int iduserrole;
  Role idrole;
  User usercode;

  factory UserRole.fromJson(Map<String, dynamic> json) => _$UserRoleFromJson(json);
  Map<String, dynamic> toJson() => _$UserRoleToJson(this);
}