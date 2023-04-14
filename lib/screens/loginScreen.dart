import 'package:flutter/material.dart';
import 'package:egg_delivery_app/customModels/LoginViewModel.dart';
import 'package:egg_delivery_app/helper/ApiResponse.dart';
import 'package:egg_delivery_app/screens/forgetPwScreen.dart';
import 'package:get_it/get_it.dart';
import 'package:egg_delivery_app/screens/homeScreen.dart';
import 'package:egg_delivery_app/service/UserService.dart';
import 'package:egg_delivery_app/utils/Util.dart';
import '../const/colors.dart';
import '../screens/forgetPwScreen.dart';
import '../screens/signUpScreen.dart';
import '../utils/helper.dart';
import '../widgets/customTextInput.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

void  setupLocator() {
  GetIt.I.registerLazySingleton((() => UserService()));
}

void main() {
  setupLocator();
  runApp(LoginScreen());
}

class LoginScreen extends StatefulWidget {
  static const routeName = "/loginScreen";

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final http = UserService();
  APIResponse<dynamic> _apiResponse;
  TextEditingController _userNameController;
  TextEditingController _passwordController;
  String errorMessage = "";
  final List<String> errors = [];
  bool _isObscure = true;

  void addError({String error}) {
    if (!errors.contains(error))
      setState(() {
        errorMessage = error;
        errors.add(error);
      });
  }

  void removeError({String error}) {
    if (errors.contains(error))
      setState(() {
        errorMessage = "";
        errors.clear();
      });
  }

  @override
  void initState(){
    EasyLoading.dismiss();
    super.initState();
    errorMessage = "";
    _userNameController = TextEditingController();
    _passwordController = TextEditingController();
  }


  clearTextField(){
    _userNameController.clear();
    _passwordController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Helper.getScreenHeight(context),
        width: Helper.getScreenWidth(context),
        child: SafeArea(
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 40,
              vertical: 30,
            ),
            child: Column(
              children: [
                Text(
                  "Connexion",
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w500,
                      color: AppColor.logoBg,
                    )

                ),
                Spacer(),
                Text('Vos informations de connexion'),
                Spacer(),
                Text(
                  errorMessage,
                  //errors.isNotEmpty? errors.first: "cdcdcdcd",
                  style: TextStyle(fontSize: 12, fontStyle: FontStyle.italic, color: Colors.red),
                ),
                buildLoginFormField(),
                //CustomTextInput(
                //  hintText: "Your email",
                //),
                Spacer(),
                buildPwdFormField(),
                //CustomTextInput(
                //  hintText: "password",
               // ),
                Spacer(),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () async {
                      APIResponse<dynamic> response;
                      LoginViewModel newUserToConnect = new LoginViewModel(username: _userNameController.text, password: _passwordController.text);

                      response = await http.connectUser(newUserToConnect);
                      setState(() {
                        _apiResponse = response;
                      });
                      if (_apiResponse.error == false) {
                        setState(() {
                          _passwordController.text = "";
                          _userNameController.text = "";
                        });
                        Util.connectedUser = _apiResponse.data;
                        Navigator.of(context)
                            .pushReplacementNamed(HomeScreen.routeName);
                       }
                      else {
                        setState(() {
                          errorMessage="Nom d'utilisateur ou mot de passe incorrect !!!";
                        });
                      }
                    },
                    child: Text("Connexion"),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(AppColor.logoBg)
                    ),
                  ),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .pushReplacementNamed(ForgetPwScreen.routeName);
                  },
                  child: Text("Mot de passe oublié ?"),
                ),
                Spacer(
                  flex: 2,
                ),
                Text("Ou se connecter avec"),
                Spacer(),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        Color(
                          0xFF367FC0,
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          Helper.getAssetName(
                            "fb.png",
                            "virtual",
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Text("Connexion avec Facebook")
                      ],
                    ),
                  ),
                ),
                Spacer(),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        Color(
                          0xFFDD4B39,
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          Helper.getAssetName(
                            "google.png",
                            "virtual",
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Text("Connnexion avec Google")
                      ],
                    ),
                  ),
                ),
                Spacer(
                  flex: 2,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScreen()));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Je n'ai pas de Compte? "),
                      Text(
                        "Creer",
                        style: TextStyle(
                          color: AppColor.logoBg,
                          fontWeight: FontWeight.bold,
                          fontSize: 16
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  TextFormField buildPwdFormField() {
    return TextFormField(
      keyboardType: TextInputType.text,
      obscureText: _isObscure,
      onSaved: (newValue) {
        setState(() {
          _passwordController.text = newValue;
        });
      },
      onTap: (){
        if (_passwordController.text.isNotEmpty) {
          setState(() {
            errorMessage = "";
          });
        }else{
          setState(() {
            errorMessage="Veuillez entrer le mot de passe";
          });
          return "";
        }
      },
      onChanged: (value) {
        if (value.isNotEmpty) {
          setState(() {
            errorMessage = "";
          });
        }
        if (value.isEmpty) {
          setState(() {
            errorMessage = "Veuillez entrer le mot de passe";
          });
        }
        return null;
      },
      validator: (value) {
        if (!value.isEmpty) {
         setState(() {
           errorMessage = "Veuillez entrer le mot de passe";
         });
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        border: new OutlineInputBorder(
            borderSide: new BorderSide(color: Colors.teal)
        ),
        //labelText: AppLocalizations.of(context)!.pwd,
        suffixIcon: IconButton(
          icon: Icon(_isObscure ? Icons.visibility : Icons.visibility_off),
          onPressed: (){
            setState(() {
              _isObscure = !_isObscure;
            });
          },
        ),
        // hintText: "Nom d'utilisateur",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        filled: true,
        isDense: true,

      ),
      controller: _passwordController,
    );
  }

  TextFormField buildLoginFormField() {
    return TextFormField(
      keyboardType: TextInputType.text,
      onSaved: (newValue) {
        setState(() {
          _userNameController.text = newValue;
        });
      },
      onTap: (){
        if (_userNameController.text.isNotEmpty) {
          setState(() {
            errorMessage = "";
          });
        }else{
          setState(() {
            errorMessage="Veuillez entrer le nom d'utilisateur";
          });
          return "";
        }
      },
      onChanged: (value) {
        if (value.isNotEmpty) {
         setState(() {
           errorMessage = "";
         });
        }else{
          setState(() {
            errorMessage="Veuillez entrer le nom d'utilisateur";
          });
        }
        return null;
      },
      /*validator: (value) {
        if (!value.isEmpty) {
          addError(error: "Nom d'utilisateur invalide");
          return "";
        }
        return null;
      },*/
      decoration: InputDecoration(
        border: new OutlineInputBorder(
            borderSide: new BorderSide(color: Colors.teal)
        ),
        //labelText: AppLocalizations.of(context)!.login,
        suffixIcon: Icon(Icons.account_circle_sharp),
        //hintText: "Nom d'utilisateur",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        filled: true,
        isDense: true,
      ),
      controller: _userNameController,
    );
  }
}
