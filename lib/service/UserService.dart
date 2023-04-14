import 'dart:convert';
import 'dart:io';

import 'package:basic_utils/basic_utils.dart';
import 'package:http/http.dart' as http;
import 'package:egg_delivery_app/customModels/LoginViewModel.dart';
import 'package:egg_delivery_app/customModels/UserWrapper.dart';
import 'package:egg_delivery_app/helper/ApiResponse.dart';
import 'package:egg_delivery_app/customModels/ErrorObject.dart';
import 'package:egg_delivery_app/models/User.dart';



class UserService{

  static const API = 'http://127.0.0.1:8009/user/';
  //static const FileAPI = 'http://192.168.43.109:8009/eggAppFile/';
  static const ConnectUserAPI = 'http://127.0.0.1:8009/login';

  static const headers ={
    'Content-Type' : 'application/json',
    "Accept" : 'application/json'
  };

  Future<APIResponse<dynamic>> connectUser(LoginViewModel loginViewModel) async{
    var url = Uri.parse(ConnectUserAPI);
    return http.post(url, headers: headers, body:jsonEncode(loginViewModel)).then((data) {
      final int statueCode = data.statusCode;
      if (statueCode == 200){
        Map<String, dynamic> jsonData = json.decode(data.body);

        UserWrapper connectedUser = new UserWrapper(
          user: User(
            usercode: jsonData["user"]["usercode"],
            username: jsonData["user"]["username"],
            userfirstphone: jsonData["user"]["userfirstphone"],
            usersexe: jsonData["user"]["usersexe"],
            useremail: jsonData["user"]["useremail"],
            userroles: jsonData["user"]["userroles"],
            usercreateon: jsonData["user"]["usercreateon"],
            userupdatedon: jsonData["user"]["userupdatedon"],
            userstatus: jsonData["user"]["userstatus"],
            userlogin: jsonData["user"]["userlogin"],
          ),
          token: jsonData["token"],
          tokenExpiresAt: jsonData["tokenExpiresAt"],
        );
        return APIResponse<UserWrapper>(data: connectedUser, errorMessage:'', error: false);
      }else{
        return APIResponse<ErrorObject>(error: true, errorMessage: 'An error occured',data: ErrorObject(errorCode: statueCode, errorText: "Error"));
      }
    })
        .catchError((_) => APIResponse<ErrorObject>(error: true, errorMessage: 'Unable to contact the server',data: ErrorObject(errorCode: 404, errorText: "Empty")));
  }

}
