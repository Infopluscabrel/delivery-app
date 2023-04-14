// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'UserWrapper.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserWrapper _$UserWrapperFromJson(Map<String, dynamic> json) {
  return UserWrapper(
    user: User.fromJson(json['user'] as Map<String, dynamic>),
    token: json['token'] as String,
    tokenExpiresAt: json['tokenExpiresAt'] as String,
  );
}

Map<String, dynamic> _$UserWrapperToJson(UserWrapper instance) =>
    <String, dynamic>{
      'user': instance.user,
      'token': instance.token,
      'tokenExpiresAt': instance.tokenExpiresAt,
    };
