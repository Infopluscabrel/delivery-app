// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Produit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Produit _$ProduitFromJson(Map<String, dynamic> json) {
  return Produit(
    codeproduit: json['codeproduit'] as int,
    labelproduit: json['labelproduit'] as String,
    descproduit: json['descproduit'] as String,
    imageproduit: json['imageproduit'] as String,
    commandeProduitList: (json['commandeProduitList'] as List<dynamic>)
        .map((e) => CommandeProduit.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$ProduitToJson(Produit instance) => <String, dynamic>{
      'codeproduit': instance.codeproduit,
      'labelproduit': instance.labelproduit,
      'descproduit': instance.descproduit,
      'imageproduit': instance.imageproduit,
      'commandeProduitList': instance.commandeProduitList,
    };
