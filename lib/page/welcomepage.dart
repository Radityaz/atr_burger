import 'package:atr_burger/page/loginpage.dart';
import 'package:atr_burger/page/signuppage.dart';
import 'package:atr_burger/provider/google_sign_in.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

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
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      onPrimary: Colors.black,
                      minimumSize: Size(double.infinity, 50),
                    ),
                  icon: FaIcon(FontAwesomeIcons.google, color:Colors.red),
                  label: Text('Sign Up with Google'),
                  onPressed: () {
                    final provider = 
                        Provider.of<GoogleSignInProvider>(context, listen: false);
                    provider.googleLogin();
                  },
                ),
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