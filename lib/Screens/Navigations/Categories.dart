// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:pharma/Widgets/ImageButton.dart';

class Categories extends StatefulWidget {
  static final id = 'Category';

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              }),
        ],
        title: Center(
          child: Text('Categories'),
        ),
      ),
      body: Row(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    ImageButtons(
                      text: 'Beauty Care',
                      imagetext: 'lib/Images/11.jpg',
                    ),
                    ImageButtons(
                      text: 'Mom and Baby Care',
                      imagetext: 'lib/Images/8.jpg',
                    ),
                    ImageButtons(
                      text: 'Personal Care',
                      imagetext: 'lib/Images/7.jpg',
                    ),
                  ],
                ),
                Row(
                  children: [
                    ImageButtons(
                      text: 'Sports Care',
                      imagetext: 'lib/Images/1.jpg',
                    ),
                    ImageButtons(
                      text: 'Kids Meds',
                      imagetext: 'lib/Images/8.jpg',
                    ),
                    ImageButtons(
                      text: 'Prescribed Meds',
                      imagetext: 'lib/Images/uppresc.png',
                    ),
                  ],
                ),
                Row(
                  children: [
                    ImageButtons(
                      text: 'Self Medications',
                      imagetext: 'lib/Images/11.jpg',
                    ),
                  ],
                )
              ],
            ),
          ),
          // ListView(
          //   children: [],
          // )
        ],
      ),
    );
  }
}
