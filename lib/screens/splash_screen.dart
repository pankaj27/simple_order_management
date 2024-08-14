import 'dart:async';

import 'package:flutter/material.dart';
import 'package:simple_order_management/screens/login_screen.dart';

import 'dashboard.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState(){
    super.initState();
    Timer(const Duration(seconds: 5),()=>Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>const LoginScreen())));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        body:
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>
            [
              Align(
                  alignment: Alignment.bottomCenter,
                  child:Image.asset('assets/images/splash-screen-logo.png',height: 140,),

              )
            ],
          ),
      );
  }
}
