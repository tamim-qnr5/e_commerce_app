import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Category_Item extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('assets/ad1.png',),

          ),
          Text('Womens\'s')
        ],
      ),
    );
  }
}
