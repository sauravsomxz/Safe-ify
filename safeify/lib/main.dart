import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:safeify/views/map.dart';
import 'package:safeify/views/welcome_screen.dart';
import 'package:safeify/views/login_screen.dart';
import 'package:safeify/views/registration_screen.dart';
import 'package:safeify/views/homepage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        LoginScreen.id : (context) => LoginScreen(),
        RegistrationScreen.id : (context) => RegistrationScreen(),
        WelcomeScreen.id : (context) => WelcomeScreen(),
        HomePage.id : (context) => HomePage(),
      },
      home: LoginScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}