import 'dart:core';
import 'package:json_annotation/json_annotation.dart';
import 'package:egg_delivery_app/models/Localisation.dart';

part 'UserLocal.g.dart';

@JsonSerializable()
class UserLocal{
  UserLocal({ this.iduserlocal,  this.localcode, this.usercode});

  int iduserlocal;
  Localisation localcode;
  String usercode;

  factory UserLocal.fromJson(Map<String, dynamic> json) => _$UserLocalFromJson(json);
  Map<String, dynamic> toJson() => _$UserLocalToJson(this);
}