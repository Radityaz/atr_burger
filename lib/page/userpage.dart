import 'package:atr_burger/page/loginpage.dart';
import 'package:atr_burger/page/welcomepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_sign_in/google_sign_in.dart';

class UserPage extends StatefulWidget {
  UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  GoogleSignIn _googleSignIn = GoogleSignIn(
    scopes: [
      'email',
      // 'https://www.googleapis.com/auth/contacts.readonly',
    ],
  );
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
        body: _currentUser==null ?
        Column(
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
            : Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    child: ListTile(
                      leading: GoogleUserCircleAvatar(identity: _currentUser!),
                      title: Text(_currentUser!.displayName ?? '', style: TextStyle(color: Colors.white),),
                      subtitle: Text(_currentUser!.email, style: TextStyle(color: Colors.white)),
                      trailing: IconButton(
                        onPressed: () {
                          _googleSignIn.disconnect();
                          
                        },
                        icon: Icon(Icons.logout,color: Colors.red,),
                      ),
                    ),
                  ),
              ],
            ));
  }
}

// Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Center(child: Text("Ini Usersetting")),
//           ElevatedButton(onPressed: () {Navigator.pop(context);}, child: Text("Log out"))
//         ],
//       ),