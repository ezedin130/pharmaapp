// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, must_be_immutable, avoid_unnecessary_containers

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
                  horizontal: 10.0,
                ),
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
                      ),
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
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ImageButtons(
                      text: 'Upload prescription',
                      imagetext: 'lib/Images/uppresc.png',
                      width: 90.0,
                    ),
                    ImageButtons(
                      text: 'Doctor Appointment',
                      imagetext: 'lib/Images/docsappointment.png',
                      width: 90.0,
                    ),
                    ImageButtons(
                      text: 'Health Checkup',
                      imagetext: 'lib/Images/healthcheckup.webp',
                      width: 90.0,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 16.0,
              ),
              // Column(
              //   children: [
              //     Text(
              //       'OUR BEST SELLING ITEMS',
              //       style: TextStyle(color: Colors.blueAccent),
              //     ),
              //   ],
              // ),
              Card(
                child: Row(
                  children: [
                    NavigButtns(
                      text: 'Home',
                      icon: Icon(Icons.home),
                    ),
                    NavigButtns(
                      text: 'Category',
                      icon: Icon(Icons.category),
                    ),
                    NavigButtns(
                      text: 'Upload',
                      icon: Icon(Icons.upload_file),
                    ),
                    NavigButtns(
                      text: 'Profile',
                      icon: Icon(Icons.account_circle_rounded),
                    ),
                    NavigButtns(
                      text: 'Cart',
                      icon: Icon(Icons.shopping_cart),
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

class ImageButtons extends StatelessWidget {
  ImageButtons(
      {required this.text, required this.imagetext, required this.width});

  String text;
  String imagetext;
  double width;
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
                fit: BoxFit.fill,
                width: 100.0,
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
