import 'dart:core';
import 'package:json_annotation/json_annotation.dart';
import 'package:egg_delivery_app/models/Souscription.dart';

part 'Paiement.g.dart';

@JsonSerializable()
class Paiement{
  Paiement({ this.paiementcode,  this.paiementmontant, this.paiementdate,  this.paiementcomment,
     this.typepaiment,  this.telephonepaiement,  this.idsouscription});

  int paiementcode;
  double paiementmontant;
  DateTime paiementdate;
  String paiementcomment;
  String typepaiment;
  String telephonepaiement;
  Souscription idsouscription;

  factory Paiement.fromJson(Map<String, dynamic> json) => _$PaiementFromJson(json);
  Map<String, dynamic> toJson() => _$PaiementToJson(this);
}