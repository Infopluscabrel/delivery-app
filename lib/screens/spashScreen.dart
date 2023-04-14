import 'dart:async';

import 'package:flutter/material.dart';

import './landingScreen.dart';
import '../utils/helper.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Timer _timer;

  @override
  void initState() {
    _timer = Timer(Duration(milliseconds: 4000), () {
      Navigator.of(context).pushReplacementNamed(LandingScreen.routeName);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Helper.getScreenWidth(context),
        height: Helper.getScreenHeight(context),
        child: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              child: Image.asset(
                Helper.getAssetName("bg_splash.png", "virtual"),
                fit: BoxFit.fill,
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Image.asset(
                Helper.getAssetName("logo.png", "virtual"),
              ),
            ),
            Align(

              alignment: Alignment.topCenter,

              child: Text(
                  "Bienvenue Chez Oeufs Mobile, votre application de livraison d'oeufs.",
                  style: TextStyle(fontSize: 12, fontFamily: "Arial Narrow", color: Color(0XFFFFFFFF), fontStyle: FontStyle.italic),
              ),
            ),

            Align(
              alignment: Alignment.bottomCenter,

              child: Text(

                "Faites-vous livrer chez vous des oeufs frais de qualité!!!",
                style: TextStyle(fontSize: 13, fontFamily: "Arial Narrow", color: Color(0XFFFFFFFF), fontStyle: FontStyle.italic),
              ),
            )
          ],
        ),
      ),
    );
  }
}
