import 'package:egg_delivery_app/const/colors.dart';
import 'package:egg_delivery_app/screens/loginScreen.dart';
import 'package:flutter/material.dart';

import '../utils/helper.dart';
import '../widgets/customTextInput.dart';
import './sentOTPScreen.dart';

void main() {

  runApp(ForgetPwScreen());
}
class ForgetPwScreen extends StatefulWidget {
  static const routeName = "/restpwScreen";

  @override
  State<ForgetPwScreen> createState() => _ForgetPwScreenState();
}

class _ForgetPwScreenState extends State<ForgetPwScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
              "Réinitialisation",
              style: TextStyle(color: Colors.white),
              textAlign: TextAlign.center)
          ,
          backgroundColor: AppColor.logoBg,
          leading: BackButton(
            color: Colors.white,
            onPressed: (){
              Navigator.pushReplacementNamed(context, LoginScreen.routeName);
            },
          ),
        ),
        body: Container(
          width: Helper.getScreenWidth(context),
          height: Helper.getScreenWidth(context),
          child: Container(
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 40,
                vertical: 30,
              ),
              child: Column(
                children: [
                  Text(
                      "Mot de passe oublié ?",
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.w500,
                        color: AppColor.logoBg,
                      ),
                  ),
                  Spacer(),
                  Text(
                    "Veuillez entrer numero de telephone email pour recevoir le code de reinitialisation",
                    textAlign: TextAlign.center,
                  ),
                  Spacer(flex: 2),
                  CustomTextInput(hintText: "Numero"),
                  Spacer(),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        //if()
                        Navigator.of(context)
                            .pushReplacementNamed(SendOTPScreen.routeName);
                      },

                      child: Text("Envoyer"),
                      style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(AppColor.logoBg),
                        shape: MaterialStatePropertyAll(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.5),
                            side: BorderSide(width: 2, color: AppColor.logoBg),
                          )
                        )

                      ),


                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
