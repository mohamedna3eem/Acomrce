import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../ForgetPassword/ForgetPassword.dart';
import '../ui/outh/register/register.dart';

class SplashScreen extends StatefulWidget {
  static const  String routename="SplashScreen";

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override

  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Register()),
      );
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(

        body: Container(
          width: double.infinity,
          child: Image.asset("assets/images/Splash Screen.png",

              fit: BoxFit.cover),
        )

    );




  }}
