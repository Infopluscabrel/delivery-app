import 'dart:core';
import 'package:json_annotation/json_annotation.dart';
import 'package:egg_delivery_app/models/Produit.dart';
import 'package:egg_delivery_app/models/Commande.dart';

part 'CommandeProduit.g.dart';

@JsonSerializable()
class CommandeProduit{
  CommandeProduit({ this.idcommandeproduit,  this.comcode, this.codeproduit});

  int idcommandeproduit;
  Commande comcode;
  Produit codeproduit;

  factory CommandeProduit.fromJson(Map<String, dynamic> json) => _$CommandeProduitFromJson(json);
  Map<String, dynamic> toJson() => _$CommandeProduitToJson(this);
}