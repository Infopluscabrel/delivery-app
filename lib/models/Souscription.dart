import 'dart:core';
import 'package:json_annotation/json_annotation.dart';
import 'package:egg_delivery_app/models/User.dart';
import 'package:egg_delivery_app/models/Livraison.dart';
import 'package:egg_delivery_app/models/Abonnement.dart';
import 'package:egg_delivery_app/models/Paiement.dart';

part 'Souscription.g.dart';

@JsonSerializable()
class Souscription{
  Souscription({this.idsouscription, this.debutsouscription, this.datesouscription,  this.finsouscription,
     this.statutsouscription,  this.paiementList, this.aboncode,  this.usercode, this.abonprix,
     this.livraisonList});

  int idsouscription;
  DateTime debutsouscription;
  DateTime datesouscription;
  DateTime finsouscription;
  int statutsouscription;
  List<Paiement> paiementList;
  Abonnement aboncode;
  User usercode;
  double abonprix;
  List<Livraison> livraisonList;

  factory Souscription.fromJson(Map<String, dynamic> json) => _$SouscriptionFromJson(json);
  Map<String, dynamic> toJson() => _$SouscriptionToJson(this);

}