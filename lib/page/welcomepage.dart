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
      appBar: AppBar(title: Text("ATR Burger")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            margin: EdgeInsets.all(15),
            // color: Colors.amber,
            height: MediaQuery.of(context).size.height * 0.35,
            width: MediaQuery.of(context).size.width,            
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("BURGER\nON THE GO",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                SizedBox(height: 10,),
                Text("We make the best burger with fresh ingredient we\ndeliver to you from the click from your phone",style: TextStyle(fontSize: 12),),
                SizedBox(height: 20,),
                ElevatedButton(
                  onPressed: () {Navigator.push(context,MaterialPageRoute(builder: (context)=>LoginPage()));}, 
                  child: Container(
                    alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width,
                  child: Text("LOG IN"),  
                  )
                ),
                  ElevatedButton(
                  onPressed: () {Navigator.push(context,MaterialPageRoute(builder: (context)=>SignUpPage()));}, 
                  child: Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width,
                  child: Text("SIGN UP"),  
                  )
                )
              ],
            ),
          )
        ],
      )
    );
  }
}

      // body: Center(child: Column(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: [
      //     Text("Ini Welcomepage"),
      //     Row(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children: [
      //         ElevatedButton(onPressed: () {Navigator.push(context,MaterialPageRoute(builder: (context)=>LoginPage()));}, child: Text("Login")),
      //         SizedBox(width: 20,),
      //         ElevatedButton(onPressed: () {Navigator.push(context,MaterialPageRoute(builder: (context)=>SignUpPage()));}, child: Text("Sign Up")),
      //       ],
      //     )
      //   ],
      // )
      // ),