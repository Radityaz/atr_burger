import 'dart:async';

import 'package:atr_burger/page/welcomepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
  
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 1), (() => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> WelcomePage() ))));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Container(color: Colors.black, width: 70, height: 70,),
        SizedBox(height: 10,),
        Text("ATR Burger")

      ],)),
    );
  }
}