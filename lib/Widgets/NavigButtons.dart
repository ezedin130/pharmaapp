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