// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_declarations

import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:pharma/Services/Texts.dart';
import 'package:pharma/Constants.dart';
import 'dart:math';

class RegisterScreen extends StatefulWidget {
  static final String id = 'register';

  @override
  State<RegisterScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<RegisterScreen>
    with SingleTickerProviderStateMixin {
  final texts = Texts();
  late AnimationController controller;
  late Animation<double> animation;
  final random = Random().nextInt(20) + 1;

  @override
  void initState() {
    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 3));
    // TODO: implement initState
    animation = Tween<double>(begin: 20, end: 40).animate(controller);
    controller.forward();
    controller.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'SIGN UP',
            style: TextStyle(
                fontSize: animation.value,
                color: Colors.teal,
                fontWeight: FontWeight.bold),
          ),
          TextLiquidFill(
            boxBackgroundColor: Color(0xffFEF7FF),
            textAlign: TextAlign.center,
            waveColor: Colors.teal,
            text: texts.getRegRandomtext(random),
            textStyle: TextStyle(
              fontSize: 40.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextField(
            decoration: textFieldDecoration.copyWith(
              hintText: 'Enter Your Email',
            ),
            onChanged: (value) {},
          ),
          SizedBox(
            height: 15.0,
          ),
          TextField(
            decoration: textFieldDecoration.copyWith(
              hintText: 'Enter Your Password',
            ),
            onChanged: (value) {},
          )
        ],
      )),
    );
  }
}
