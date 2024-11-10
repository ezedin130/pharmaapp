// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:pharma/Screens/RegisterScreen.dart';
import 'package:pharma/Screens/LoginScreen.dart';

class WelcomeScreen extends StatefulWidget {
  static const id = 'welcome';
//color #4C81A7
  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  // late AnimationController controller;
  // late Animation animation;
  // @override
  // void initState() {
  //   controller =
  //       AnimationController(vsync: this, duration: Duration(seconds: 3));

  //   animation = ColorTween(begin: Colors.lightBlueAccent, end: Colors.teal)
  //       .animate(controller);

  //   controller.forward();

  //   controller.addListener(() {
  //     setState(() {});
  //   });
  //   super.initState();
  // }

  // @override
  // void dispose() {
  //   controller.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //backgroundColor: animation.value,
        body: SafeArea(
          child: Padding(
              padding: const EdgeInsets.only(top: 200.0, bottom: 32.0),
              child: Column(
                children: [
                  DefaultTextStyle(
                    style: TextStyle(
                        fontSize: 40.0,
                        fontFamily: 'AtomicAge',
                        fontWeight: FontWeight.bold),
                    child: AnimatedTextKit(
                      animatedTexts: [
                        TypewriterAnimatedText('YOUR HEALTH IS OUR TOP PRIORITY',
                            speed: Duration(milliseconds: 500)),
                      ],
                      repeatForever: true,
                    ),
                  ),
                  MatContainer(
                    text: 'Login',
                    onp: () {
                      Navigator.pushNamed(context, LoginScreen.id);
                    },
                  ),
                  MatContainer(
                    text: ' Register',
                    onp: () {
                      Navigator.pushNamed(context, RegisterScreen.id);
                    },
                  )
                ],
              )),
        ));
  }
}

class MatContainer extends StatelessWidget {
  MatContainer({required this.text, required this.onp});
  String text;
  Function() onp;

  bool hovered = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(20.0),
            child: MaterialButton(
              onPressed: onp,
              child: Text(
                text,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
