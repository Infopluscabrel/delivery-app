import 'dart:core';
import 'package:json_annotation/json_annotation.dart';

part 'LoginViewModel.g.dart';

@JsonSerializable()
class LoginViewModel{
  LoginViewModel({ this.username,  this.password});

  String username;
  String password;

  factory LoginViewModel.fromJson(Map<String, dynamic> json) => _$LoginViewModelFromJson(json);
  Map<String, dynamic> toJson() => _$LoginViewModelToJson(this);
}