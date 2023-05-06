import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled1/budg.dart';
import 'package:untitled1/budgie.dart';
import 'package:untitled1/constants.dart';
import 'package:untitled1/dashboard.dart';
import 'package:untitled1/homepage.dart';
import 'package:untitled1/login_s.dart';


import 'package:untitled1/register_s.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {


  WidgetsFlutterBinding.ensureInitialized();


  if (kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyB1tBVLGRQBl3rBE2EmjdZBwed1ELJ3E80",
          appId: "1:487048605806:web:f0208f867c2d792fb5767f",
          messagingSenderId: "487048605806",
          projectId: "budgie-3c448",
          storageBucket: "budgie-3c448.appspot.com"
      ),
    );
  } else {
    await Firebase.initializeApp();
  }

  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      theme: ThemeData(
        primaryColor: primary,
        fontFamily: 'Mark',
      ),
      home: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.active) {
              if (snapshot.hasData) {
                return Homepage();
              }

            }
            return LoginS();

          }),
    );
  }
}
