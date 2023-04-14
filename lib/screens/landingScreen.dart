import 'package:egg_delivery_app/screens/signUpScreen.dart';
import 'package:flutter/material.dart';
import 'package:clip_shadow/clip_shadow.dart';
import 'package:egg_delivery_app/screens/loginScreen.dart';

import '../const/colors.dart';
import '../utils/helper.dart';

class LandingScreen extends StatefulWidget {
  static const routeName = "/landingScreen";

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          width: Helper.getScreenWidth(context),
          height: Helper.getScreenHeight(context),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: ClipShadow(
                  clipper: CustomClipperAppBar(),
                  boxShadow: [
                    BoxShadow(
                      color: AppColor.placeholder,
                      offset: Offset(0, 20),
                      blurRadius: 10,
                    ),
                  ],
                  child: Container(
                    width: double.infinity,
                    height: Helper.getScreenHeight(context) * 0.5,
                    decoration: ShapeDecoration(
                      color: AppColor.logoBg,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Image.asset(
                      Helper.getAssetName("loginBG.png", "virtual"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Image.asset(
                  Helper.getAssetName("logo.png", "virtual"),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: double.infinity,
                  height: Helper.getScreenHeight(context) * 0.3,
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    children: [
                      Flexible(
                        child: Text(
                            "Savouvrez le goût des oeufs les plus frais en vous faisant  livrer ou commandez des oeufs à partir de votre appli. ",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 11, fontFamily: "Arial Narrow", color: AppColor.logoBg, fontStyle: FontStyle.italic)
                        ),
                      ),
                      Spacer(
                        flex: 1,
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor:
                            MaterialStateProperty.all(AppColor.logoBg),
                          ),
                          onPressed: () {
                            Navigator.of(context)
                                .pushReplacementNamed(LoginScreen.routeName);
                          },
                          child: Text("Connexion"),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor:
                            MaterialStateProperty.all(Colors.white),
                            foregroundColor:
                            MaterialStateProperty.all(AppColor.orange),
                            shape: MaterialStateProperty.all(
                              StadiumBorder(
                                side:
                                BorderSide(color: AppColor.logoBg, width: 1.5),
                              ),
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScreen()));
                          },
                          child: Text("Creer un compte"),
                        ),
                      ),
                      Spacer(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}

class CustomClipperAppBar extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Offset controlPoint = Offset(size.width * 0.24, size.height);
    Offset endPoint = Offset(size.width * 0.25, size.height * 0.96);
    Offset controlPoint2 = Offset(size.width * 0.3, size.height * 0.78);
    Offset endPoint2 = Offset(size.width * 0.5, size.height * 0.78);
    Offset controlPoint3 = Offset(size.width * 0.7, size.height * 0.78);
    Offset endPoint3 = Offset(size.width * 0.75, size.height * 0.96);
    Offset controlPoint4 = Offset(size.width * 0.76, size.height);
    Offset endPoint4 = Offset(size.width * 0.79, size.height);
    Path path = Path()
      ..lineTo(0, size.height)
      ..lineTo(size.width * 0.21, size.height)
      ..quadraticBezierTo(
        controlPoint.dx,
        controlPoint.dy,
        endPoint.dx,
        endPoint.dy,
      )
      ..quadraticBezierTo(
        controlPoint2.dx,
        controlPoint2.dy,
        endPoint2.dx,
        endPoint2.dy,
      )
      ..quadraticBezierTo(
        controlPoint3.dx,
        controlPoint3.dy,
        endPoint3.dx,
        endPoint3.dy,
      )
      ..quadraticBezierTo(
        controlPoint4.dx,
        controlPoint4.dy,
        endPoint4.dx,
        endPoint4.dy,
      )
      ..lineTo(size.width, size.height)
      ..lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
