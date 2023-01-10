import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../screen.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Ini Sign Up"),
          ElevatedButton(onPressed: () {Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Screen()));}, child: Text("Sign Up"))
        ],
      )),
    );
  }
}