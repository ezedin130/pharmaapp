// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:pharma/Widgets/ImageButton.dart';
import 'package:pharma/Products/HealthCare/BeautyCare/BeautyCare.dart';
import 'package:pharma/Services/Lists.dart';

class Categories extends StatefulWidget {
  static final id = 'Category';

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
 final lists = Lists();
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
            flex: 1,
            child: ListView(
              //mainAxisAlignment: MainAxisAlignment.start,
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
                ImageButtons(
                  text: 'Self Medications',
                  imagetext: 'lib/Images/11.jpg',
                )
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: ListView(children: [
              ImageButtons(text: lists.getName(0), imagetext: lists.getImagepath(0)),
              ImageButtons(text: lists.getName(1), imagetext: lists.getImagepath(1)),
              ImageButtons(text: lists.getName(2), imagetext: lists.getImagepath(2)),
            ],),
          )
        ],
      ),
    );
  }
}
