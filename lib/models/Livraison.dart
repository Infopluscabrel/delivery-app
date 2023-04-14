import 'dart:core';
import 'package:json_annotation/json_annotation.dart';
import 'package:egg_delivery_app/models/Souscription.dart';
import 'package:egg_delivery_app/models/User.dart';

part 'Livraison.g.dart';

@JsonSerializable()
class Livraison{
  Livraison({ this.livraisoncode,  this.livraisondate,  this.livraisonstatususer,  this.livraisoncomment,
     this.livraisonstatusadmin,  this.livraisonqte, this.idsouscription,  this.usercode,
     this.usercodeLivrer});

  String livraisoncode;
  DateTime livraisondate;
  String livraisonstatususer;
  String livraisoncomment;
  String livraisonstatusadmin;
  String livraisonqte;
  Souscription idsouscription;
  User usercode;
  User usercodeLivrer;

  factory Livraison.fromJson(Map<String, dynamic> json) => _$LivraisonFromJson(json);
  Map<String, dynamic> toJson() => _$LivraisonToJson(this);
}