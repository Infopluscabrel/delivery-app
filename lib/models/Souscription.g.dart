// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Souscription.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Souscription _$SouscriptionFromJson(Map<String, dynamic> json) {
  return Souscription(
    idsouscription: json['idsouscription'] as int,
    debutsouscription: DateTime.parse(json['debutsouscription'] as String),
    datesouscription: DateTime.parse(json['datesouscription'] as String),
    finsouscription: DateTime.parse(json['finsouscription'] as String),
    statutsouscription: json['statutsouscription'] as int,
    abonprix: json['abonprix'] as double,
    paiementList: (json['paiementList'] as List<dynamic>)
        .map((e) => Paiement.fromJson(e as Map<String, dynamic>))
        .toList(),
    aboncode: Abonnement.fromJson(json['aboncode'] as Map<String, dynamic>),
    usercode: User.fromJson(json['usercode'] as Map<String, dynamic>),
    livraisonList: (json['livraisonList'] as List<dynamic>)
        .map((e) => Livraison.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$SouscriptionToJson(Souscription instance) =>
    <String, dynamic>{
      'idsouscription': instance.idsouscription,
      'debutsouscription': instance.debutsouscription.toIso8601String(),
      'datesouscription': instance.datesouscription.toIso8601String(),
      'finsouscription': instance.finsouscription.toIso8601String(),
      'statutsouscription': instance.statutsouscription,
      'paiementList': instance.paiementList,
      'aboncode': instance.aboncode,
      'usercode': instance.usercode,
      'livraisonList': instance.livraisonList,
      'abonprix' : instance.abonprix,
    };
