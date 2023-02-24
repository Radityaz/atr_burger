import 'package:atr_burger/page/splashscreen.dart';
import 'package:atr_burger/provider/google_sign_in.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:provider/provider.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebase_core/firebase_core.dart';
// import 'package:atr_burger/page/push_notification_config.dart';

// Future main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();

//   runApp(MyApp());
// }


// Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
//     print("Handling a background message: ${message.messageId}");
// }

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  // await Firebase.initializeApp();
  // FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  // await PushNotificationConfig().requestPermission();
  // await PushNotificationConfig().androidNotificationChanel();
  runApp(const MyApp());
}

GoogleSignIn _googleSignIn = GoogleSignIn(
  scopes: [
    'email',
    'https://www.googleapis.com/auth/contacts.readonly',
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      // title: title,
      home: SplashScreen(),
    );

    // return GetMaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   home: SplashScreen(),
    // );
  }
}
