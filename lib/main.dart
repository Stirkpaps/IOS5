import 'package:flutter/material.dart';

void main() => runApp(MiTarjetaApp());

class MiTarjetaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text('Tarjetas de Luis'),
            actions: <Widget>[
              IconButton(icon: Icon(Icons.add_a_photo), onPressed: () {}),
            ], //fin widget appbar[]
          ), //fin appbar
          body: Container(
            child: ListView(
              children: <Widget>[
                _items('https://raw.githubusercontent.com/Stirkpaps/misImagenes/main/450_1000.jpg', 'Disco Duro'),
                SizedBox(
                  height: 5.0,
                ),
                _items('https://raw.githubusercontent.com/Stirkpaps/misImagenes/main/91273.jpg', 'Memoria USB'),
                SizedBox(
                  height: 5.0,
                ),
                _items('https://raw.githubusercontent.com/Stirkpaps/misImagenes/main/61OvV27-44L._AC_SL1500_.jpg', 'Laptop'),
                SizedBox(
                  height: 5.0,
                ),
                _items('https://raw.githubusercontent.com/Stirkpaps/misImagenes/main/descarga%20(2).jpg', 'Monitor'),
                SizedBox(
                  height: 5.0,
                ),
                _items('https://raw.githubusercontent.com/Stirkpaps/misImagenes/main/t7_1.png', 'Camara'),
                SizedBox(
                  height: 5.0,
                ),
                _items('https://raw.githubusercontent.com/Stirkpaps/misImagenes/main/Bocina-hfaudio-hfbaf15-600x600.jpg', 'Bocina'),
                SizedBox(
                  height: 5.0,
                ),
              ], //fin de widget del list view[]
            ), //fin de listview
          ), //fin de container
        ) //fin de scaffold
        ); //fin de materialapp
  } //fin de widget en mitarjetaapp

  Widget _items(String url, String producto) {
    return Container(
      padding: EdgeInsets.only(top: 5.0, right: 10.0, left: 10.0),
      child: Card(
        color: Colors.amber,
        elevation: 10.0,
        child: Column(
          children: <Widget>[
            Container(
                margin: EdgeInsets.only(left: 1.0),
                padding: EdgeInsets.only(left: 0.5),
                child: ListTile(
                  contentPadding: EdgeInsets.only(left: 0.2),
                  leading: CircleAvatar(
                    backgroundColor: Colors.cyanAccent,
                    backgroundImage: NetworkImage(url),
                    maxRadius: 35.0,
                  ),
                  title: Text(producto, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.0)),
                  subtitle: Text('Stirk re loko', style: TextStyle(fontSize: 9.0)),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                ))
          ],
        ),
      ),
    );
  }
} //fin de clase mitarjetaapp
