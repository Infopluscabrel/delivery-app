// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Livraison.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Livraison _$LivraisonFromJson(Map<String, dynamic> json) {
  return Livraison(
    livraisoncode: json['livraisoncode'] as String,
    livraisondate: DateTime.parse(json['livraisondate'] as String),
    livraisonstatususer: json['livraisonstatususer'] as String,
    livraisoncomment: json['livraisoncomment'] as String,
    livraisonstatusadmin: json['livraisonstatusadmin'] as String,
    livraisonqte: json['livraisonqte'] as String,
    idsouscription:
        Souscription.fromJson(json['idsouscription'] as Map<String, dynamic>),
    usercode: User.fromJson(json['usercode'] as Map<String, dynamic>),
    usercodeLivrer:
        User.fromJson(json['usercodeLivrer'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$LivraisonToJson(Livraison instance) => <String, dynamic>{
      'livraisoncode': instance.livraisoncode,
      'livraisondate': instance.livraisondate.toIso8601String(),
      'livraisonstatususer': instance.livraisonstatususer,
      'livraisoncomment': instance.livraisoncomment,
      'livraisonstatusadmin': instance.livraisonstatusadmin,
      'livraisonqte': instance.livraisonqte,
      'idsouscription': instance.idsouscription,
      'usercode': instance.usercode,
      'usercodeLivrer': instance.usercodeLivrer,
    };
