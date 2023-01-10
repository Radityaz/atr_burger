import 'package:atr_burger/page/loginpage.dart';
import 'package:atr_burger/page/signuppage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Ini Welcomepage"),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: () {Navigator.push(context,MaterialPageRoute(builder: (context)=>LoginPage()));}, child: Text("Login")),
              SizedBox(width: 20,),
              ElevatedButton(onPressed: () {Navigator.push(context,MaterialPageRoute(builder: (context)=>SignUpPage()));}, child: Text("Sign Up")),
            ],
          )
        ],
      )),
    );
  }
}