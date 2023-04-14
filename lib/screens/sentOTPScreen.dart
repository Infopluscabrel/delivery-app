import 'package:egg_delivery_app/screens/forgetPwScreen.dart';
import 'package:flutter/material.dart';
import 'package:egg_delivery_app/utils/Util.dart';

import '../const/colors.dart';
import '../utils/helper.dart';
import './newPwScreen.dart';

class SendOTPScreen extends StatefulWidget {
  static const routeName = "/sendOTP";

  @override
  State<SendOTPScreen> createState() => _SendOTPScreenState();
}

class _SendOTPScreenState extends State<SendOTPScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(

          title: Text(
              "Code de Verification",
              style: TextStyle(color: Colors.white),
              textAlign: TextAlign.center)
          ,
          backgroundColor: AppColor.logoBg,
          leading: BackButton(
            color: Colors.white,
            onPressed: (){
              Navigator.pushReplacementNamed(context, ForgetPwScreen.routeName);
            },
          ),

        ),
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                children: [
                  SizedBox(
                    height: 60,
                  ),
                  Text(
                    'Nous vous avons envoyez le code de verification ',
                    style: Helper.getTheme(context).headline6,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Veuillez consulter votre telephone au numero +2376***** continuer pour réinitialiser votre mot de passe",
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      OTPInput(),
                      OTPInput(),
                      OTPInput(),
                      OTPInput(),
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  SizedBox(
                    height: 60,
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context)
                            .pushReplacementNamed(NewPwScreen.routeName);
                      },
                      child: Text(
                          "Suivant"),
                      style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(AppColor.logoBg),
                        shape: MaterialStatePropertyAll(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            side: BorderSide(width: 3, color: AppColor.logoBg)
                          )
                        )
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Je n'ai pas recu de code "),
                      Text(
                        "Renvoyer",
                        style: TextStyle(
                          color: AppColor.orange,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          )),
    );
  }
}

class OTPInput extends StatelessWidget {
  const OTPInput({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration: ShapeDecoration(
        color: AppColor.placeholderBg,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 18, left: 20),
            child: Text(
              "*",
              style: TextStyle(fontSize: 45),
            ),
          ),
          TextField(
            decoration: InputDecoration(border: InputBorder.none),
          ),
        ],
      ),
    );
  }
}
