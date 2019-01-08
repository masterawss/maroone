import 'package:flutter/material.dart';
import 'package:maroone/PageHomeTabs/homeTab.dart';
import 'package:maroone/PageHomeTabs/historialTab.dart';
import 'package:maroone/PageHomeTabs/medicamentosTab.dart';
import 'package:maroone/components/ListaProximosComponent.dart';
import 'package:maroone/components/TiempoComponent.dart';

class PageHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: Home2(),
    );
  }
}


class Home2 extends StatefulWidget {
  @override
  Home2State createState() {
    return new Home2State();
  }
}

class Home2State extends State<Home2> {
  int _currentIndex = 1;
  final List<Widget> _children = [
    HistorialTab(),
    HomeTab(),
    MedicamentosTab()
  ];
    
      @override
      Widget build(BuildContext context) {
    
        return Scaffold(
          appBar: AppBar(
            title: Text(
              'Maroone',
              style: TextStyle(
                fontFamily: 'Bowhouse',
                fontWeight: FontWeight.w700,
                fontSize: 35
              ),
            ),
            actions: <Widget>[
              Icon(Icons.add)
            ],
            elevation: 0,
            centerTitle: true,
            leading: Icon(Icons.menu),
            backgroundColor: Colors.cyanAccent[400],
          ),
          body: _children[_currentIndex],
          // body: HomeTab(),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: _currentIndex,
            onTap: onTabTapped,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.schedule),
                title: Text('Historial')
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text('Home')
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.list),
                title: Text('Medicamentos')
              ),
            ],
          ),
        );
      }
    
      void onTabTapped(int index) {
        setState(() {
          _currentIndex = index;
        });
      }
    }
    

// class Home extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {

//     final head = Container(
//       decoration: BoxDecoration(
//         color: Colors.cyanAccent
//       ),
//       height: 170,
      
//       width: MediaQuery.of(context).size.width,
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         mainAxisSize: MainAxisSize.min,
//         children: <Widget>[
          
//           Text(
//             'Próximo medicamento en:',
//             style: TextStyle(
//               color: Colors.black.withOpacity(0.4),
//               fontFamily: 'Varela'
//             ),
//           ),
//           Container(
//             margin: EdgeInsets.symmetric(vertical: 5),
//             child: Text(
//               '03:14',
//               style: TextStyle(
//                 fontSize: 30,
//                 fontWeight: FontWeight.w700,
//                 color: Colors.white,
//                 fontFamily: 'Varela'
//               ),
//             ),
//           ),
//           Container(
//             margin: EdgeInsets.only(bottom: 5),
//             child: Text(
//               'horas',
//               style: TextStyle(
//                 fontFamily: 'Varela'
//               ),
//             ),
//           ),
//           Text(
//             'Amoxicilina',
//             style: TextStyle(
//               fontFamily: 'Varela',
//               fontSize: 30,
//               color: Colors.black.withOpacity(0.5)
//             ),
//           ),
//         ],
//       ),
//     );

//     final item = Container(
//       margin: EdgeInsets.all(10),
//       padding: EdgeInsets.all(15),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(15),
//         boxShadow: [
//           BoxShadow(
//             blurRadius: 6,
//             offset: Offset(0, 3),
//             color: Colors.grey[300]
//           )
//         ]
//       ),
//       child: Row(
//         children: <Widget>[
//           Container(
//             margin: EdgeInsets.only(right: 15),
//             height: 24,
//             width: 24,
//             decoration: BoxDecoration(
//               color: Colors.pinkAccent,
//               borderRadius: BorderRadius.circular(50),
//               boxShadow: [
//                 BoxShadow(
//                   blurRadius: 6,
//                   offset: Offset(0, 3),
//                   color: Colors.grey[400]
//                 )
//               ]
//             ),
//           ),
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: <Widget>[
//               Text(
//                 'asd',
//                 style: TextStyle(
//                   fontSize: 19,
//                   fontFamily: 'Varela'
//                 ),
//               ),
//               Text(
//                 'asd',
//                 style: TextStyle(
//                   fontFamily: 'Varela'
//                 ),
//               ),
//               Text(
//                 '1 pastilla',
//                 style: TextStyle(
//                   fontFamily: 'Varela',
//                   color: Colors.grey
//                 ),
//               )
//             ],
//           ),
//           Spacer(),
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.end,
//             children: <Widget>[
//               Text('asasdasd'),
//               Container(
//                 child: Icon(Icons.check),
//                 margin: EdgeInsets.only(top: 15, right: 15),
//               )
//             ],
//           )
//         ],
//       ),
//     );

//     final lista = Container(
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(15)
//       ),
//       // margin: EdgeInsets.only(top: 160),
//       child: ListView(
//         children: <Widget>[
//           Container(
//             padding: EdgeInsets.only(top: 160),
//           ),
//           item,
//           item,
//           item,
//           item,
//           item,
//           item,
//           item,
//           item,
//         ],
//       ),
//     );
    

//     return Scaffold(
//       appBar: AppBar(
//         leading: Icon(
//           Icons.menu,
//           color: Colors.white,
//         ),
//         elevation: 0,
//         backgroundColor: Colors.cyanAccent,
//         title: Text(
//           'Maroone',
//           style: TextStyle(
//             fontFamily: 'Bowhouse',
//             fontSize: 25,
//             fontWeight: FontWeight.w800,
//             color: Colors.white
//           ),
//         ),
//       ),
//       body: Stack(
//         children: <Widget>[
//           head,
//           lista,
//         ],
//       ),
//       floatingActionButton: FloatingActionButton(
//         child: Icon(Icons.add),
//         elevation: 3,
//         onPressed: (){

//         },
//         backgroundColor: Colors.cyanAccent,
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//       bottomNavigationBar: BottomNavigationBar(
//         items: [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.alarm),
//             title: Text('Lista')
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.list),
//             title: Text('Medicamentos')
//           ),
//         ],
//       ),
//     );
//   }
// }