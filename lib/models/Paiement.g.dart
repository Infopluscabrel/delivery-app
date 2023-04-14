// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Paiement.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Paiement _$PaiementFromJson(Map<String, dynamic> json) {
  return Paiement(
    paiementcode: json['paiementcode'] as int,
    paiementmontant: (json['paiementmontant'] as num).toDouble(),
    paiementdate: DateTime.parse(json['paiementdate'] as String),
    paiementcomment: json['paiementcomment'] as String,
    typepaiment: json['typepaiment'] as String,
    telephonepaiement: json['telephonepaiement'] as String,
    idsouscription:
        Souscription.fromJson(json['idsouscription'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$PaiementToJson(Paiement instance) => <String, dynamic>{
      'paiementcode': instance.paiementcode,
      'paiementmontant': instance.paiementmontant,
      'paiementdate': instance.paiementdate.toIso8601String(),
      'paiementcomment': instance.paiementcomment,
      'typepaiment': instance.typepaiment,
      'telephonepaiement': instance.telephonepaiement,
      'idsouscription': instance.idsouscription,
    };
