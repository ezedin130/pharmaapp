import 'package:pharma/Products/HealthCare/BeautyCare/BeautyCare.dart';

class Lists {
  List beautycare = [
    BeautyCare(
      name: 'Day and Night Cream',
      imagepath: 'lib/Images/3.jpg',
      number: 100,
    ),
    BeautyCare(
      name: 'Facial Mask',
      imagepath: 'lib/Images/5.jpg',
      number: 100,
    ),
    BeautyCare(
      name: 'Lip Care',
      imagepath: 'lib/Images/8.jpg',
      number: 100,
    ),
    //add more as needed
  ];
  String getName(int index) {
    return beautycare[index].name;
  }

  String getImagepath(int index) {
    return beautycare[index].imagepath;
  }
}
