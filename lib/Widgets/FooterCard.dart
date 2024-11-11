import 'package:flutter/material.dart';
import 'package:pharma/Widgets/NavigButtons.dart';

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
    );
  }
}
