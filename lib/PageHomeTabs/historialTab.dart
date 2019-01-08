import 'package:flutter/material.dart';
import 'package:maroone/components/ListaProximosComponent.dart';
import 'package:maroone/components/TiempoComponent.dart';

class HistorialTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final tiempo = TiempoComponent(tiempo: '03:49',medicamento: 'Doxicilina');
    
    
    final contentBody = Container(
      padding: EdgeInsets.only(top: 50),
      width: MediaQuery.of(context).size.width,
      // color: Colors.cyanAccent[400],
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.cyanAccent[400],
            Colors.lightBlueAccent[200]
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter
        )
      ),
      child: tiempo
    );

    return Container(
      child: Column(
        children: <Widget>[
          Text('asd'),
          Text('asd'),
          Text('asd'),
        ],
      ),
    );
  }
}