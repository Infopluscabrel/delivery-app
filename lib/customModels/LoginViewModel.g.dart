// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'LoginViewModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginViewModel _$LoginViewModelFromJson(Map<String, dynamic> json) {
  return LoginViewModel(
    username: json['username'] as String,
    password: json['password'] as String,
  );
}

Map<String, dynamic> _$LoginViewModelToJson(LoginViewModel instance) =>
    <String, dynamic>{
      'username': instance.username,
      'password': instance.password,
    };
