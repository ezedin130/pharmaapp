// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, must_be_immutable, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:pharma/Constants.dart';
import 'package:pharma/Widgets/ImageButton.dart';
import 'package:pharma/Widgets/FooterCard.dart';

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
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 10.0,
                ),
                child: ListView(
                  children: [
                    Card(
                      margin: EdgeInsets.symmetric(
                        horizontal: 10.0,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.search,
                              color: Colors.blueGrey,
                            ),
                            SizedBox(width: 8.0),
                            Expanded(
                              // Use Expanded here in Row to allow full-width TextField
                              child: TextField(
                                decoration: textFieldDecoration.copyWith(
                                  hintText:
                                      'Search Medicine and healthcare products',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 16.0),
                    Row(
                      children: [
                        ImageButtons(
                          text: 'Upload prescription',
                          imagetext: 'lib/Images/uppresc.png',
                        ),
                        ImageButtons(
                          text: 'Doctor Appointment',
                          imagetext: 'lib/Images/docsappointment.png',
                        ),
                        ImageButtons(
                          text: 'Health Checkup',
                          imagetext: 'lib/Images/healthcheckup.webp',
                        ),
                      ],
                    ),
                    SizedBox(height: 16.0),
                    Column(
                      children: [
                        Text(
                          'OUR BEST SELLING ITEMS',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: [
                            ImageButtons(
                              text: 'Creatine',
                              imagetext: 'lib/Images/1.jpg',
                            ),
                            ImageButtons(
                              text: 'Vitamins',
                              imagetext: 'lib/Images/2.webp',
                            ),
                            ImageButtons(
                              text: 'Omega 3',
                              imagetext: 'lib/Images/3.jpg',
                            ),
                            ImageButtons(
                              text: 'Whey Protein',
                              imagetext: 'lib/Images/whey.jpg',
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            ImageButtons(
                              text: 'Probiotics',
                              imagetext: 'lib/Images/5.jpg',
                            ),
                            ImageButtons(
                              text: 'Baby food',
                              imagetext: 'lib/Images/6.jpg',
                            ),
                            ImageButtons(
                              text: 'Sexual Wellness',
                              imagetext: 'lib/Images/7.jpg',
                            ),
                            ImageButtons(
                              text: 'Baby Diapers',
                              imagetext: 'lib/Images/8.jpg',
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            ImageButtons(
                              text: 'BP monitors',
                              imagetext: 'lib/Images/9.jpg',
                            ),
                            ImageButtons(
                              text: 'Moisturizers',
                              imagetext: 'lib/Images/10.jpg',
                            ),
                            ImageButtons(
                              text: 'Nebulizer',
                              imagetext: 'lib/Images/11.jpg',
                            ),
                            ImageButtons(
                              text: 'Collagen',
                              imagetext: 'lib/Images/12.jpg',
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 16.0),
                    Column(
                      children: [
                        Text(
                          'Most Searched Items',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: [
                            ImageButtons(
                              text: 'Collagen',
                              imagetext: 'lib/Images/12.jpg',
                            ),
                            ImageButtons(
                              text: 'BP monitors',
                              imagetext: 'lib/Images/9.jpg',
                            ),
                            ImageButtons(
                              text: 'Baby food',
                              imagetext: 'lib/Images/6.jpg',
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            ImageButtons(
                              text: 'Nebulizer',
                              imagetext: 'lib/Images/11.jpg',
                            ),
                            ImageButtons(
                              text: 'Baby Diapers',
                              imagetext: 'lib/Images/8.jpg',
                            ),
                            ImageButtons(
                              text: 'Whey Protein',
                              imagetext: 'lib/Images/whey.jpg',
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            FooterCard(),
          ],
        ),
      ),
    );
  }
}
