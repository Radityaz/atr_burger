import 'package:atr_burger/screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
      return Scaffold(
      appBar: AppBar(),
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Ini LoginPage"),
          ElevatedButton(onPressed: () {Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Screen()));}, child: Text("Login"))
        ],
      )),
    );
  }
}