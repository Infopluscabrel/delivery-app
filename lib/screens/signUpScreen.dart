import 'package:flutter/material.dart';
import '../const/colors.dart';
import '../screens/loginScreen.dart';
import '../utils/helper.dart';
import '../widgets/customTextInput.dart';

class SignUpScreen extends StatefulWidget {
  static const routeName = '/signUpScreen';

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(

          title: Text(
              "Creation de compte",
              style: TextStyle(color: Colors.white),
              textAlign: TextAlign.center)
          ,
          backgroundColor: AppColor.logoBg,
          leading: BackButton(
            color: Colors.white,
            onPressed: (){
              Navigator.pop(context);
            },
          ),
        ),
          body: Container(
            width: Helper.getScreenWidth(context),
            height: Helper.getScreenHeight(context),
            child: SafeArea(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
                child: Column(
                  children: [
                    Text(
                        "Formulaire d'enregistrement",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: AppColor.logoBg,
                        )
                    ),
                    Spacer(),
                    Text(
                      "Vos informations utiles",
                    ),
                    Spacer(),
                    CustomTextInput(hintText: "Nom"),
                    Spacer(),
                    CustomTextInput(hintText: ""),
                    Spacer(),
                    CustomTextInput(hintText: "Mobile No"),
                    Spacer(),
                    CustomTextInput(hintText: "Address"),
                    Spacer(),
                    CustomTextInput(hintText: "Password"),
                    Spacer(),
                    CustomTextInput(hintText: "Confirm Password"),
                    Spacer(),
                    SizedBox(
                      height: 50,
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text("S'enregistrer"),
                        style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(AppColor.logoBg),
                          shape: MaterialStatePropertyAll(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                              side: BorderSide(color: AppColor.orange, width: 0.5)
                            )
                          )
                        ),

                      ),
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context)
                            .pushReplacementNamed(LoginScreen.routeName);
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Already have an Account?"),
                          Text(
                            "Login",
                            style: TextStyle(
                              color: AppColor.orange,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
