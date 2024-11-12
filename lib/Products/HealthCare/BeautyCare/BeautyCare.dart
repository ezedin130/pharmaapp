class BeautyCare{
  BeautyCare({required this.name , required this.imagepath,required this.number});
  String name;
  String imagepath;
  int number;
  //class should have add and remove based on its number ,  a list that consists of its properties

//this should be called in another file
  List beautycare = [
    BeautyCare(name: 'Day and Night Cream', imagepath: 'lib/Images/BeautyCare/1.webp', number: 1),
    BeautyCare(name: 'Facial Mask', imagepath: 'lib/Images/BeautyCare/2.jpg', number: 2),
    BeautyCare(name: 'Lip Care', imagepath: 'lib/Images/BeautyCare/3.webp', number: 3),
    //add more as needed
  ];
}