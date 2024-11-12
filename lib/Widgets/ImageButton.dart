// ignore_for_file: must_be_immutable, prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
class ImageButtons extends StatelessWidget {
  ImageButtons({required this.text, required this.imagetext});

  String text;
  String imagetext;
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        color: Color(0xffEFF3F8),
        child: MaterialButton(
          onPressed: () {},
          child: Column(
            children: [
              Image.asset(
                imagetext,
                fit: BoxFit.contain,
              ),
              Text(
                text,
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}