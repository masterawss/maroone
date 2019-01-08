import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TiempoComponent extends StatelessWidget {

  String tiempo;
  String medicamento;

  TiempoComponent({this.tiempo, this.medicamento});
  
  @override
  Widget build(BuildContext context) {
    return Column(
        children: <Widget>[
          SvgPicture.asset(
            'assets/logo/logo.svg',
            height: 90,
            color: Colors.white,
          ),
          Text(
            'Próximo medicamento en:',
            style: TextStyle(
              fontFamily: 'Varela',
              color: Colors.white.withOpacity(0.6)
            ),
          ),
          Text(
            '03:49',
            style: TextStyle(
              fontFamily: 'Varela',
              color: Colors.white,
              fontSize: 40
            ),
          ),
          Text(
            'horas',
            style: TextStyle(
              fontFamily: 'Varela',
              color: Colors.white,
              fontSize: 20
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: Text(
              'Doxicilina',
              style: TextStyle(
                fontFamily: 'Varela',
                fontSize: 35,
                color: Colors.white.withOpacity(0.8)
              ),
            ),
          )
          
        ],
      );

  }
}
