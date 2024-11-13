// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:pharma/Widgets/ImageButton.dart';
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
            },
          ),
        ],
        title: Center(
          child: Text('Categories'),
        ),
      ),
      body: Row(
        children: [
          // Left Column with ListView for scrollable content
          Container(
            color: Colors.blueGrey,
            width:
                MediaQuery.of(context).size.width / 4, // Control the width here
            child: ListView(
              children: [
                ImageButtons(
                  text: 'Beauty Care',
                  imagetext: 'lib/Images/11.jpg',
                  onp: (){
                    
                  },
                ),
                ImageButtons(
                  text: 'Mom and Baby Care',
                  imagetext: 'lib/Images/8.jpg',
                  onp: (){},
                ),
                ImageButtons(
                  text: 'Personal Care',
                  imagetext: 'lib/Images/7.jpg',
                  onp: (){},
                ),
                ImageButtons(
                  text: 'Sports Care',
                  imagetext: 'lib/Images/1.jpg',
                  onp: (){},
                ),
                ImageButtons(
                  text: 'Kids Meds',
                  imagetext: 'lib/Images/8.jpg',
                  onp: (){},
                ),
                ImageButtons(
                  text: 'Prescribed Meds',
                  imagetext: 'lib/Images/uppresc.png',
                  onp: (){},
                ),
                ImageButtons(
                  text: 'Self Medications',
                  imagetext: 'lib/Images/11.jpg',
                  onp: (){},
                ),
              ],
            ),
          ),
          SizedBox(
            width: 10.0,
          ),
          // Right Column with ListView for scrollable content
          Container(
            color: Colors.white,
            width: MediaQuery.of(context).size.width *2 /3, // Control the width here
            child: ListView(
              children: [
                Row(
                  children: [
                    ImageButtons(
                      text: lists.getName(0),
                      imagetext: lists.getImagepath(0),
                      onp: (){},
                    ),
                    ImageButtons(
                      text: lists.getName(1),
                      imagetext: lists.getImagepath(1),
                      onp: (){},
                    ),
                    ImageButtons(
                      text: lists.getName(2),
                      imagetext: lists.getImagepath(2),
                      onp: (){},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
