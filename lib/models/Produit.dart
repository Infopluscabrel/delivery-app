import 'dart:core';
import 'package:json_annotation/json_annotation.dart';
import 'package:egg_delivery_app/models/CommandeProduit.dart';

part 'Produit.g.dart';

@JsonSerializable()
class Produit{
  Produit({ this.codeproduit,  this.labelproduit,  this.descproduit,  this.imageproduit,
     this.commandeProduitList});

  int codeproduit;
  String labelproduit;
  String descproduit;
  String imageproduit;
  List<CommandeProduit> commandeProduitList;

  factory Produit.fromJson(Map<String, dynamic> json) => _$ProduitFromJson(json);
  Map<String, dynamic> toJson() => _$ProduitToJson(this);
}