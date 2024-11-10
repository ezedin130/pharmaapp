// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:pharma/Constants.dart';

class HomeScreen extends StatefulWidget {
  static final id = 'home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Card(
                margin: EdgeInsets.symmetric(
                    horizontal: 10), // Adds padding to Card edges
                child: Padding(
                  padding: const EdgeInsets.all(8.0), // Padding inside the card
                  child: Row(
                    children: [
                      Icon(
                        Icons.search,
                        color: Colors.blueGrey,
                      ),
                      SizedBox(
                        width: 8.0,
                      ), // Adds spacing between Icon and TextField
                      Expanded(
                        child: TextField(
                          decoration: textFieldDecoration.copyWith(
                            hintText: 'Search Medicine and healthcare products',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 16.0,
              ), 
              Card(
                child: Row(
                  children: [
                    NavigButtns(
                      text: 'Home',
                      icon: Icon(
                        Icons.home
                      ),
                    ),
                    NavigButtns(
                      text: 'Category',
                      icon: Icon(
                        Icons.category
                      ),
                    ),
                    NavigButtns(
                      text: 'Upload',
                      icon: Icon(
                        Icons.upload_file
                      ),
                    ),
                    NavigButtns(
                      text: 'Profile',
                      icon: Icon(
                        Icons.account_circle_rounded
                      ),
                    ),
                    NavigButtns(
                      text: 'Cart',
                      icon: Icon(
                        Icons.shopping_cart
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class NavigButtns extends StatelessWidget {
   NavigButtns({required this.icon , required this.text});
  String text;
  Icon icon;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Text(
            text
          ),
          IconButton(
            onPressed: (){},
            icon:icon,
          ),
        ],
      ),
      );
  }
}
