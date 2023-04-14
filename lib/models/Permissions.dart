import 'dart:core';
import 'package:json_annotation/json_annotation.dart';
import 'package:egg_delivery_app/models/Livraison.dart';
import 'package:egg_delivery_app/models/RolePermission.dart';
import 'package:egg_delivery_app/models/Souscription.dart';
import 'package:egg_delivery_app/models/UserLocal.dart';
import 'package:egg_delivery_app/models/Commande.dart';
import 'package:egg_delivery_app/models/UserRole.dart';

part 'Permissions.g.dart';

@JsonSerializable()
class Permissions{
  Permissions({ this.idpermission,  this.labelpermission, this.descpermission,  this.rolePermissionList});

  int idpermission;
  String labelpermission;
  String descpermission;
  List<RolePermission> rolePermissionList;

  factory Permissions.fromJson(Map<String, dynamic> json) => _$PermissionsFromJson(json);
  Map<String, dynamic> toJson() => _$PermissionsToJson(this);
}