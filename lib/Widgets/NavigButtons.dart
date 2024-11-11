// ignore_for_file: must_be_immutable, prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
class NavigButtns extends StatelessWidget {
  NavigButtns({required this.icon, required this.text});
  String text;
  Icon icon;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Text(text),
          IconButton(
            onPressed: () {},
            icon: icon,
          ),
        ],
      ),
    );
  }
}