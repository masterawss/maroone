import 'package:flutter/material.dart';
import 'package:maroone/components/CircularColor.dart';

class MedicamentosTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final lista = Column(
        children: <Widget>[
          // FloatingActionButton(
          //   onPressed: (){

          //   },
          //   child: Text('a'),
          // ),
          ItemMedicamento(
            medicamento: 'Ibuprofeno',
            tipo: '1 pastilla',
            intervalo: 'Cada 8 horas',
            tomas: '8/12',
            circularColor: CircularColor(
              color: Colors.pink,
            ),
          ),
          ItemMedicamento(
            medicamento: 'Ibuprofeno',
            tipo: '1 pastilla',
            intervalo: 'Cada 8 horas',
            tomas: '8/12',
            circularColor: CircularColor(
              color: Colors.amber,
            ),
          ),
          ItemMedicamento(
            medicamento: 'Ibuprofeno',
            tipo: '1 pastilla',
            intervalo: 'Cada 8 horas',
            tomas: '8/12',
            circularColor: CircularColor(
              color: Colors.blueAccent,
            ),
          ),
        ],
      );

    return Stack(
      alignment: AlignmentDirectional(1, 1),
      children: <Widget>[
        lista,
        Container(
          margin: EdgeInsets.all(10),
          child: FloatingActionButton(
            onPressed: (){

            },
            child: Icon(Icons.add),
          ),
        )
        
      ],
    );
  }
}

class ItemMedicamento extends StatelessWidget {

  CircularColor circularColor;
  String medicamento;
  String tipo;
  String intervalo;
  String tomas;

  ItemMedicamento({
    this.circularColor, 
    this.medicamento,
    this.tipo,
    this.intervalo,
    this.tomas
  });

  @override
  Widget build(BuildContext context) {

    return Container(
      child: Column(
        children: <Widget>[
          circularColor,
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: Text(
              medicamento,
              style: TextStyle(
                fontFamily: 'Varela',
                fontWeight: FontWeight.w700,
                fontSize: 15
              ),
            ),
          ),
          Text(
            tipo,
            style: TextStyle(
              fontFamily: 'Varela',
            ),
          ),
          Text(
            intervalo,
            style: TextStyle(
              fontFamily: 'Varela',
              color: Colors.grey
            ),
          ),
          Text(
            tomas,
            style: TextStyle(
              fontSize: 20,
              fontFamily: 'Varela',
            ),
          ),
        ],
      ),
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.all(20),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey[300],
            blurRadius: 6,
            offset: Offset(0, 3)
          )
        ]
      ),
    );

  }
}