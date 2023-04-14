import 'dart:core';
import 'package:json_annotation/json_annotation.dart';
import 'package:egg_delivery_app/models/Livraison.dart';
import 'package:egg_delivery_app/models/Souscription.dart';
import 'package:egg_delivery_app/models/UserLocal.dart';

part 'Localisation.g.dart';

@JsonSerializable()
class Localisation{
  Localisation({ this.localcode,  this.longitude, this.latitude,  this.localdate,
     this.localquatier,  this.userLocalList});

  int localcode;
  double longitude;
  double latitude;
  DateTime localdate;
  String localquatier;
  List<UserLocal> userLocalList;

  factory Localisation.fromJson(Map<String, dynamic> json) => _$LocalisationFromJson(json);
  Map<String, dynamic> toJson() => _$LocalisationToJson(this);

}