// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:pharma/Screens/Navigations/Categories.dart';
import 'package:pharma/Widgets/NavigButtons.dart';
import 'package:pharma/Screens/HomeScreen.dart';

class FooterCard extends StatelessWidget {
  const FooterCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          NavigButtns(
            text: 'Home',
            icon: Icon(Icons.home),
            onp:() {
              Navigator.pushNamed(context,HomeScreen.id);
            },
          ),
          NavigButtns(
            text: 'Category',
            icon: Icon(Icons.category),
            onp:() {
              Navigator.pushNamed(context , Categories.id);
            },
          ),
          NavigButtns(
            text: 'Upload',
            icon: Icon(Icons.upload_file),
            onp:() {
              
            },
          ),
          NavigButtns(
            text: 'Profile',
            icon: Icon(Icons.account_circle_rounded),
            onp:() {
              
            },
          ),
          NavigButtns(
            text: 'Cart',
            icon: Icon(Icons.shopping_cart),
            onp:() {
              
            },
          ),
        ],
      ),
    );
  }
}
