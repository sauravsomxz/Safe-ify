import 'package:flutter/material.dart';
import 'package:safeify/views/welcome_screen.dart';
import 'package:safeify/views/login_screen.dart';
import 'package:safeify/views/registration_screen.dart';
import 'package:safeify/views/homepage.dart';

void main() => runApp(Safeify());

class Safeify extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        LoginScreen.id : (context) => LoginScreen(),
        RegistrationScreen.id : (context) => RegistrationScreen(),
        WelcomeScreen.id : (context) => WelcomeScreen(),
      },
      initialRoute: WelcomeScreen.id,
      debugShowCheckedModeBanner: false,
    );
  }
}