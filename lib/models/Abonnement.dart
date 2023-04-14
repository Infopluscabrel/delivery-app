import 'dart:core';
import 'package:json_annotation/json_annotation.dart';
import 'package:egg_delivery_app/models/Souscription.dart';

part 'Abonnement.g.dart';

@JsonSerializable()
class Abonnement{
  Abonnement({ this.aboncode,  this.abonlabel,  this.abontype,  this.abonstatut, this.abonprix,  this.souscriptionList});

  int aboncode;
  String abonlabel;
  String abontype;
  String abonstatut;
  double abonprix;
  List<Souscription> souscriptionList;

  factory Abonnement.fromJson(Map<String, dynamic> json) => _$AbonnementFromJson(json);
  Map<String, dynamic> toJson() => _$AbonnementToJson(this);

}