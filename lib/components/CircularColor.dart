import 'package:flutter/material.dart';

class CircularColor extends StatelessWidget {

  Color color;

  CircularColor({this.color});


  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.only(right: 15),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(50),
        boxShadow: [
          BoxShadow(
            blurRadius: 6,
            offset: Offset(0, 3),
            color: Colors.grey[400]
          )
        ]
      ),
    );
  }
}