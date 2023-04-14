// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'User.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) {
  return User(
    usercode: json['usercode'] as String,
    username: json['username'] as String,
    userfirstphone: json['userfirstphone'] as String,
    usersecondphone: json['usersecondphone'] as String,
    usersexe: json['usersexe'] as String,
    useremail: json['useremail'] as String,
    userroles: json['userroles'] as String,
    usercreateon: json['usercreateon'] as String,
    userupdatedon: json['userupdatedon'] as String,
    userstatus: json['userstatus'] as int,
    userlogin: json['userlogin'] as String,
    userpwd: json['userpwd'] as String,
    usercodeotp: json['usercodeotp'] as String,
    usercodeotpexp: DateTime.parse(json['usercodeotpexp'] as String),
    usercodeoptvalid: json['usercodeotpvalid'] as bool,
    userphoto: json['userphoto'] as String,
    souscriptionList: (json['souscriptionList'] as List<dynamic>)
        .map((e) => Souscription.fromJson(e as Map<String, dynamic>))
        .toList(),
    commandeList: (json['commandeList'] as List<dynamic>)
        .map((e) => Commande.fromJson(e as Map<String, dynamic>))
        .toList(),
    userRoleList: (json['userRoleList'] as List<dynamic>)
        .map((e) => UserRole.fromJson(e as Map<String, dynamic>))
        .toList(),
    userLocalList: (json['userLocalList'] as List<dynamic>)
        .map((e) => UserLocal.fromJson(e as Map<String, dynamic>))
        .toList(),
    livraisonList: (json['livraisonList'] as List<dynamic>)
        .map((e) => Livraison.fromJson(e as Map<String, dynamic>))
        .toList(),
    livraisonList1: (json['livraisonList1'] as List<dynamic>)
        .map((e) => Livraison.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'usercode': instance.usercode,
      'username': instance.username,
      'userfirstphone': instance.userfirstphone,
      'usersecondphone': instance.usersecondphone,
      'usersexe': instance.usersexe,
      'useremail': instance.useremail,
      'userroles': instance.userroles,
      'usercreateon': instance.usercreateon,
      'userupdatedon': instance.userupdatedon,
      'userstatus': instance.userstatus,
      'userlogin': instance.userlogin,
      'userpwd': instance.userpwd,
      'userphoto': instance.userphoto,
      'usercodeotp':instance.usercodeotp,
      'usercodeotpexp':instance.usercodeotpexp,
      'usercodeotpvalid':instance.usercodeoptvalid,
      'souscriptionList': instance.souscriptionList,
      'commandeList': instance.commandeList,
      'userRoleList': instance.userRoleList,
      'userLocalList': instance.userLocalList,
      'livraisonList': instance.livraisonList,
      'livraisonList1': instance.livraisonList1,
    };
