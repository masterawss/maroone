import 'package:flutter/material.dart';
import 'package:maroone/components/CircularColor.dart';

class ListaProximosComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    // final circuloColor = Container(
    //   margin: EdgeInsets.only(right: 15),
    //   height: 24,
    //   width: 24,
    //   decoration: BoxDecoration(
    //     color: Colors.pinkAccent,
    //     borderRadius: BorderRadius.circular(50),
    //     boxShadow: [
    //       BoxShadow(
    //         blurRadius: 6,
    //         offset: Offset(0, 3),
    //         color: Colors.grey[400]
    //       )
    //     ]
    //   ),
    // );


    final item = Container(
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 6,
            offset: Offset(0, 3),
            color: Colors.black.withOpacity(0.30)
          )
        ],
        borderRadius: BorderRadius.circular(10)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          CircularColor(color: Colors.pink,),
          Padding(
            padding: EdgeInsets.only(top: 10, left: 25, right: 25),
            child: Column(
              children: <Widget>[
                Text(
                  '12:05 am',
                  style: TextStyle(
                    fontSize: 23,
                    fontFamily: 'Varela'
                  ),
                ),
                Text(
                  'Ibuprofeno',
                  style: TextStyle(
                    fontFamily: 'Varela'
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
    
    return ListView(
      // mainAxisSize: MainAxisSize.min,
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      
      children: <Widget>[
        item,
        item,
        item,
      ],
    );
  }
}