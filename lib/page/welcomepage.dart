import 'package:atr_burger/page/loginpage.dart';
import 'package:atr_burger/page/signuppage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff151515),
      appBar: AppBar( backgroundColor: Color(0xff151515),elevation: 0  , title: Text("ATR BURGER",style: TextStyle(fontWeight: FontWeight.bold),)),
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
                Text("BURGER\nON THE GO",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                SizedBox(height: 10,),
                Text("We make the best burger with fresh ingredient we\ndeliver to you from the click from your phone",style: TextStyle(fontSize: 12,color: Colors.white),),
                SizedBox(height: 10,),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Color(0xffFFB103)),
                  onPressed: () {Navigator.push(context,MaterialPageRoute(builder: (context)=>LoginPage()));}, 
                  child: Container(
                    alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width,
                  child: Text("LOG IN",style: TextStyle(color: Color(0xff151515),fontWeight: FontWeight.bold),),  
                  )
                ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(side: const BorderSide(width: 3,color: Color(0xffFFB103)),primary: Color(0xff151515)),
                  onPressed: () {Navigator.push(context,MaterialPageRoute(builder: (context)=>SignUpPage()));}, 
                  child: Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width,
                  child: Text("SIGN UP",style: TextStyle(color: Color(0xffFFB103))),  
                  )
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