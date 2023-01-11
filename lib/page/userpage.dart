import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class UserPage extends StatelessWidget {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context) {
        return Scaffold(
        body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text("Ini Usersetting")),
          ElevatedButton(onPressed: () {Navigator.pop(context);}, child: Text("Log out"))
        ],
      ),
      
    );
  }
}