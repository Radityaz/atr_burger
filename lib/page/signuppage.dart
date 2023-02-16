import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../screen.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff151515),
      appBar: AppBar(
        backgroundColor: Color(0xff151515),
        elevation: 0,
      ),
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
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Text("Create an Account For you",
                    style: TextStyle(fontSize: 10, color: Colors.white)),
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
                      hintStyle: TextStyle(color: Color(0xffFFB103)),
                      prefixIcon: Icon(
                        Icons.people,
                        color: Color(0xffFFB103),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 2, color: Color(0xffFFB103)))),
                  style: TextStyle(color: Color(0xffFFB103)),
                ),
                SizedBox(
                  height: 30,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 15),
                      hintText: "Email",
                      hintStyle: TextStyle(color: Color(0xffFFB103)),
                      prefixIcon: Icon(
                        Icons.mail,
                        color: Color(0xffFFB103),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 2, color: Color(0xffFFB103)))),
                  style: TextStyle(color: Color(0xffFFB103)),
                ),
                SizedBox(
                  height: 30,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 15),
                      hintText: "Password",
                      hintStyle: TextStyle(color: Color(0xffFFB103)),
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Color(0xffFFB103),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 2, color: Color(0xffFFB103)))),
                  style: TextStyle(color: Color(0xffFFB103)),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 15, right: 15),
            height: MediaQuery.of(context).size.height * 0.20,
            child: Column(
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Color(0xffFFB103)),
                  onPressed: () {Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>Screen()));}, 
                  child: Container(
                    alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width,
                  child: Text("LOG IN",style: TextStyle(color: Color(0xff151515),fontWeight: FontWeight.bold),),  
                  )
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
