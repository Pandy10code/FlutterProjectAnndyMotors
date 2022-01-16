import 'package:actividad1_primerapp/carros.dart';
import 'package:flutter/material.dart';

//Andres Israel Asqui Santillan
//Universidad Técnica Particular de Loja

void main() {
  runApp(const MaterialApp(
    title: 'Navigation Basics',
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffB2DFDB),
      appBar: AppBar(
        title: const Text('Anndy Motors'),
        backgroundColor: const Color(0xff00BFA5),
      ),
      body:Column(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
        const Text("Bienvenido a Anndy Cars",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
        Container(
          padding: const EdgeInsets.all(20.0),
          child: Image.network(
              "https://cdn.pixabay.com/photo/2013/11/20/18/51/autos-214033_960_720.jpg"),
        ),
        Container(
          padding: const EdgeInsets.all(20.0),
          child: Image.network(
              "https://cdn.pixabay.com/photo/2012/11/02/13/02/car-63930_960_720.jpg"),
        ),
        Center(
            child: ElevatedButton(
              onPressed: () {
                // Navigate to second route when tapped.
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Carros()));
              },
              style: ElevatedButton.styleFrom(
                primary: const Color(0xff004D40),
                shadowColor: Colors.black,
              ),
              child: Row(mainAxisSize: MainAxisSize.min,children: const <Widget>[
                Icon(Icons.car_rental_rounded),
                SizedBox(width: 5,),
                Text("Ver más carros"),
              ],
              )
            )
        ),
      ],)



    );
  }
}