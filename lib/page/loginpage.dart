import 'package:atr_burger/page/signuppage.dart';
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
                  "Welcome Back",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text("Login to Continue", style: TextStyle(fontSize: 10)),
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
                      child: Text("LOG IN"),
                    )),
                    SizedBox(height: 10,),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpPage()));
                  },
                  child: Text("Dont Have Account?",style: TextStyle(decoration: TextDecoration.underline,fontSize: 11),),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

      // appBar: AppBar(),
      // body: Center(child: Column(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: [
      //     Text("Ini LoginPage"),
      //     ElevatedButton(onPressed: () {Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Screen()));}, child: Text("Login"))
      //   ],
      // )
      // ),