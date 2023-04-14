// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Commande.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Commande _$CommandeFromJson(Map<String, dynamic> json) {
  return Commande(
    comcode: json['comcode'] as String,
    comqte: json['comqte'] as int,
    cominitdate: DateTime.parse(json['cominitdate'] as String),
    comlivdate: DateTime.parse(json['comlivdate'] as String),
    commontant: (json['commontant'] as num).toDouble(),
    comcomment: json['comcomment'] as String,
    usercode: User.fromJson(json['usercode'] as Map<String, dynamic>),
    commandeProduitList: (json['commandeProduitList'] as List<dynamic>)
        .map((e) => CommandeProduit.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$CommandeToJson(Commande instance) => <String, dynamic>{
      'comcode': instance.comcode,
      'comqte': instance.comqte,
      'cominitdate': instance.cominitdate.toIso8601String(),
      'comlivdate': instance.comlivdate.toIso8601String(),
      'commontant': instance.commontant,
      'comcomment': instance.comcomment,
      'usercode': instance.usercode,
      'commandeProduitList': instance.commandeProduitList,
    };
