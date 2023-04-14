import 'dart:core';
import 'package:json_annotation/json_annotation.dart';
import 'package:egg_delivery_app/models/User.dart';
import 'package:egg_delivery_app/models/CommandeProduit.dart';

part 'Commande.g.dart';

@JsonSerializable()
class Commande{
  Commande({ this.comcode,  this.comqte, this.cominitdate,  this.comlivdate,
     this.commontant,  this.comcomment,  this.usercode,  this.commandeProduitList});

  String comcode;
  int comqte;
  DateTime cominitdate;
  DateTime comlivdate;
  double commontant;
  String comcomment;
  User usercode;
  List<CommandeProduit> commandeProduitList;

  factory Commande.fromJson(Map<String, dynamic> json) => _$CommandeFromJson(json);
  Map<String, dynamic> toJson() => _$CommandeToJson(this);
}