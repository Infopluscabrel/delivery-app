// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'CommandeProduit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CommandeProduit _$CommandeProduitFromJson(Map<String, dynamic> json) {
  return CommandeProduit(
    idcommandeproduit: json['idcommandeproduit'] as int,
    comcode: Commande.fromJson(json['comcode'] as Map<String, dynamic>),
    codeproduit: Produit.fromJson(json['codeproduit'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CommandeProduitToJson(CommandeProduit instance) =>
    <String, dynamic>{
      'idcommandeproduit': instance.idcommandeproduit,
      'comcode': instance.comcode,
      'codeproduit': instance.codeproduit,
    };
