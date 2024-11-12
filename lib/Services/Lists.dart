import 'package:pharma/Products/HealthCare/BeautyCare/BeautyCare.dart';

class Lists {
  List beautycare = [
    BeautyCare(
      name: 'Day and Night Cream',
      imagepath: 'lib/Images/BeautyCare/1.webp',
      number: 1,
    ),
    BeautyCare(
      name: 'Facial Mask',
      imagepath: 'lib/Images/BeautyCare/2.jpg',
      number: 2,
    ),
    BeautyCare(
      name: 'Lip Care',
      imagepath: 'lib/Images/BeautyCare/3.webp',
      number: 3,
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
