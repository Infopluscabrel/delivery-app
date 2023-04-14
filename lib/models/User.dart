import 'dart:core';
import 'package:json_annotation/json_annotation.dart';
import 'package:egg_delivery_app/models/Livraison.dart';
import 'package:egg_delivery_app/models/Souscription.dart';
import 'package:egg_delivery_app/models/UserLocal.dart';
import 'package:egg_delivery_app/models/Commande.dart';
import 'package:egg_delivery_app/models/UserRole.dart';

part 'User.g.dart';

@JsonSerializable()
class User{
  User({ this.usercode,  this.username, this.userfirstphone,  this.usersecondphone,
     this.usersexe,  this.useremail, this.userroles,  this.usercreateon,
     this.userupdatedon,  this.userstatus, this.userlogin,  this.userpwd,
     this.userphoto,  this.souscriptionList,  this.commandeList,  this.userRoleList, this.usercodeotp, this.usercodeotpexp, this.usercodeoptvalid, this.userLocalList,  this.livraisonList,  this.livraisonList1});

  String usercode;
  String username;
  String userfirstphone;
  String usersecondphone;
  String usersexe;
  String useremail;
  String userroles;
  String usercreateon;
  String userupdatedon;
  int userstatus;
  String userlogin;
  String userpwd;
  String userphoto;
  String usercodeotp;
  DateTime usercodeotpexp;
  bool   usercodeoptvalid;
  List<Souscription> souscriptionList;
  List<Commande> commandeList;
  List<UserRole> userRoleList;
  List<UserLocal> userLocalList;
  List<Livraison> livraisonList;
  List<Livraison> livraisonList1;


  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);
}