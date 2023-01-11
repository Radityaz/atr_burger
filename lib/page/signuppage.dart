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
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(left: 15, right: 15),
            height: MediaQuery.of(context).size.height * 0.13,
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Getting Started",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text("Create an Account For you", style: TextStyle(fontSize: 10)),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 15, right: 15),
            height: MediaQuery.of(context).size.height * 0.54,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 15),
                    hintText: "Username",
                    prefixIcon: Icon(Icons.people),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 15),
                    hintText: "Password",
                    prefixIcon: Icon(Icons.lock),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 15),
                    hintText: "Email",
                    prefixIcon: Icon(Icons.mail),
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 15, right: 15),
            height: MediaQuery.of(context).size.height * 0.20,
            child: Column(
              children: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => Screen()));
                    },
                    child: Container(
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width,
                      child: Text("SIGN UP"),
                    )),
                    SizedBox(height: 10,),

              ],
            ),
          )
        ],
      ),
    );
  }
}