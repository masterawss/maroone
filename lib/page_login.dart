import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PageLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final header = Container(
      color: Colors.cyanAccent[400],
      // alignment: Alignment(0, 0),
      padding: EdgeInsets.symmetric(vertical: 90),
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          SvgPicture.asset(
            'assets/logo/logo.svg',
            height: 50,
          ),

          // Icon(
          //   Icons.bubble_chart,
          //   color: Colors.white,
          //   size: 50,
          // ),
          Text(
            'Maroone',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Bowhouse',
              fontWeight: FontWeight.w700,
              fontSize: 50,
              color: Colors.white
            ),
          ),
        ],
      ),
    );


    final googleButton = InkWell(
      child: Container(
        child: Text(
          'Google',
          style: TextStyle(
            color: Colors.white,
          ),
          textAlign: TextAlign.center,
        ),
        margin: EdgeInsets.symmetric(vertical: 15),
        width: 150,
        padding: EdgeInsets.symmetric(vertical: 15),
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(50),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 3),
              color: Colors.red,
              blurRadius: 6
            )
          ]
        ),
      ),
    );

    final facebookButton = InkWell(
      child: Container(
        child: Text(
          'Facebook',
          style: TextStyle(
            color: Colors.white,
          ),
          textAlign: TextAlign.center,
        ),
        margin: EdgeInsets.symmetric(vertical: 15),
        width: 150,
        padding: EdgeInsets.symmetric(vertical: 15),
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(50),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 3),
              color: Colors.blue,
              blurRadius: 6
            )
          ]
        ),
      ),
    );

    final socialSign = Column(
      children: <Widget>[
        Text(
          'O ingresar con',
          textAlign: TextAlign.center,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            facebookButton,
            googleButton
          ],
        )
      ],
    );

    final body = Container(
      padding: EdgeInsets.all(25),
      child: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Correo electrónico'
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Contraseña'
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 12),
            child: RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/home');
              },
              splashColor: Colors.white,
              padding: EdgeInsets.symmetric(vertical: 15),
              color: Colors.cyanAccent[400],
              child: Center(
                child: Text(
                  'INGRESAR',
                  style: TextStyle(
                    color: Colors.white
                  ),
                ),
              ),
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50)
              ),
            ),
          ),
          socialSign
        ],
      ),
    );

    

    return Scaffold(
      body: ListView(
        children: <Widget>[
          header,
          body
        ],
      ),
    );
  }
}