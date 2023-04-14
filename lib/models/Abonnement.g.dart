// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Abonnement.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Abonnement _$AbonnementFromJson(Map<String, dynamic> json) {
  return Abonnement(
    aboncode: json['aboncode'] as int,
    abonlabel: json['abonlabel'] as String,
    abontype: json['abontype'] as String,
    abonstatut: json['abonstatut'] as String,
    abonprix: json['abonprix'] as double,
    souscriptionList: (json['souscriptionList'] as List<dynamic>)
        .map((e) => Souscription.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$AbonnementToJson(Abonnement instance) =>
    <String, dynamic>{
      'aboncode': instance.aboncode,
      'abonlabel': instance.abonlabel,
      'abontype': instance.abontype,
      'abonstatut': instance.abonstatut,
      'abonprix': instance.abonprix,
      'souscriptionList': instance.souscriptionList,
    };
