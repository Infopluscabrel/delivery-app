import 'dart:core';
import 'package:json_annotation/json_annotation.dart';
import 'package:egg_delivery_app/models/User.dart';

part 'UserWrapper.g.dart';

@JsonSerializable()
class UserWrapper{
  UserWrapper({ this.user,  this.token,  this.tokenExpiresAt});

  User user;
  String token;
  String tokenExpiresAt;

  factory UserWrapper.fromJson(Map<String, dynamic> json) => _$UserWrapperFromJson(json);
  Map<String, dynamic> toJson() => _$UserWrapperToJson(this);
}