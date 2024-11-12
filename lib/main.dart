import 'package:flutter/material.dart';
import 'package:pharma/Screens/LoginScreen.dart';
import 'package:pharma/Screens/WelcomeScreen.dart';
import 'package:pharma/Screens/RegisterScreen.dart';
import 'Screens/HomeScreen.dart';
import 'package:pharma/Screens/Navigations/Categories.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        RegisterScreen.id: (context) => RegisterScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        HomeScreen.id: (context) => HomeScreen(),
        Categories.id: (context) => Categories(),
      },
    );
  }
}
