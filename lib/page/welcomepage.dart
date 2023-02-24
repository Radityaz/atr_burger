import 'package:atr_burger/page/loginpage.dart';
import 'package:atr_burger/page/signuppage.dart';
import 'package:atr_burger/provider/google_sign_in.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:provider/provider.dart';

GoogleSignIn _googleSignIn = GoogleSignIn(
  scopes: [
    'email',
    // 'https://www.googleapis.com/auth/contacts.readonly',
  ],
);

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  GoogleSignInAccount? _currentUser;

  Future<void> _handleSignIn() async {
    try {
      await _googleSignIn.signIn();
    } catch (error) {
      print(error);
    }
  }

  @override
  void initState() {
    _googleSignIn.onCurrentUserChanged.listen((event) {
      setState(() {
        _currentUser = event;
      });
    });
    _googleSignIn.signInSilently();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff151515),
        appBar: AppBar(
            backgroundColor: Color(0xff151515),
            elevation: 0,
            title: Text(
              "ATR BURGER",
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
        body: _currentUser == null
            ? Column(
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
                        Text(
                          "BURGER\nON THE GO",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "We make the best burger with fresh ingredient we\ndeliver to you from the click from your phone",
                          style: TextStyle(fontSize: 12, color: Colors.white),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Color(0xffFFB103)),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LoginPage()));
                            },
                            child: Container(
                              alignment: Alignment.center,
                              width: MediaQuery.of(context).size.width,
                              child: Text(
                                "LOG IN",
                                style: TextStyle(
                                    color: Color(0xff151515),
                                    fontWeight: FontWeight.bold),
                              ),
                            )),
                        ElevatedButton(
                            style:
                                ElevatedButton.styleFrom(primary: Colors.white),
                            onPressed: () => _handleSignIn(),
                            child: Container(
                                padding: EdgeInsets.symmetric(vertical: 5),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: 26,
                                      child: Image.network(
                                          'https://www.freepnglogos.com/uploads/google-logo-png/google-logo-png-webinar-optimizing-for-success-google-business-webinar-13.png'),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'Sign In With Google',
                                      style: TextStyle(color: Colors.black),
                                    )
                                  ],
                                )
                                // alignment: Alignment.center,
                                // width: MediaQuery.of(context).size.width,
                                // child: Text("SIGN UP"),
                                )),
                      ],
                    ),
                  )
                ],
              )
            : Container(
                child: ListTile(
                  leading: GoogleUserCircleAvatar(identity: _currentUser!),
                  title: Text(_currentUser!.displayName ?? ''),
                  subtitle: Text(_currentUser!.email),
                  trailing: IconButton(
                    onPressed: () {
                      _googleSignIn.disconnect();
                    },
                    icon: Icon(Icons.logout),
                  ),
                ),
              ));
  }
}

// class WelcomePage extends StatelessWidget {
//   const WelcomePage({super.key});


//   // @override
//   // void initState() {
//   //   // super.initstate();
//   // }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: Color(0xff151515),
//         appBar: AppBar(
//             backgroundColor: Color(0xff151515),
//             elevation: 0,
//             title: Text(
//               "ATR BURGER",
//               style: TextStyle(fontWeight: FontWeight.bold),
//             )),
//         body: Column(
//           mainAxisAlignment: MainAxisAlignment.end,
//           children: [
//             Container(
//               margin: EdgeInsets.all(15),
//               // color: Colors.amber,
//               height: MediaQuery.of(context).size.height * 0.35,
//               width: MediaQuery.of(context).size.width,
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 mainAxisAlignment: MainAxisAlignment.end,
//                 children: [
//                   Text(
//                     "BURGER\nON THE GO",
//                     style: TextStyle(
//                         fontSize: 20,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.white),
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   Text(
//                     "We make the best burger with fresh ingredient we\ndeliver to you from the click from your phone",
//                     style: TextStyle(fontSize: 12, color: Colors.white),
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   ElevatedButton(
//                       style:
//                           ElevatedButton.styleFrom(primary: Color(0xffFFB103)),
//                       onPressed: () {
//                         Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) => LoginPage()));
//                       },
//                       child: Container(
//                         alignment: Alignment.center,
//                         width: MediaQuery.of(context).size.width,
//                         child: Text(
//                           "LOG IN",
//                           style: TextStyle(
//                               color: Color(0xff151515),
//                               fontWeight: FontWeight.bold),
//                         ),
//                       )),
//                   ElevatedButton(
//                       style: ElevatedButton.styleFrom(primary: Colors.white),
//                       onPressed: () {},
//                       child: Container(
//                           padding: EdgeInsets.symmetric(vertical: 5),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               SizedBox(
//                                 width: 26,
//                                 child: Image.network(
//                                     'https://www.freepnglogos.com/uploads/google-logo-png/google-logo-png-webinar-optimizing-for-success-google-business-webinar-13.png'),
//                               ),
//                               SizedBox(
//                                 width: 10,
//                               ),
//                               Text(
//                                 'Sign In With Google',
//                                 style: TextStyle(color: Colors.black),
//                               )
//                             ],
//                           )
//                           // alignment: Alignment.center,
//                           // width: MediaQuery.of(context).size.width,
//                           // child: Text("SIGN UP"),
//                           )),
//                 ],
//               ),
//             )
//           ],
//         ));
//   }
// }





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
