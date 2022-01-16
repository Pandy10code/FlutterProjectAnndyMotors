import 'package:flutter/material.dart';

class Carros extends StatelessWidget {
  const Carros({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffB2DFDB),
        appBar: AppBar(
          title: const Text('Carros'),
          backgroundColor: const Color(0xff00BFA5),
        ),
        body: Column(mainAxisAlignment: MainAxisAlignment.start, children: <
            Widget>[
          Column(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
            const Text(
              'Bienvenido',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ]),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    const Text(
                      'Camioneta',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2.0),
                    ),
                    const Text(
                      'Rojo',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2.0),
                    )
                  ]),
              Container(
                padding: const EdgeInsets.all(15.0),
                child: Image.network(
                  "https://cdn.pixabay.com/photo/2017/08/09/23/55/ford-2616212_960_720.png",
                  width: 300,
                ),
              )
            ],
          ),
          Row(
            children: <Widget>[
              const Text(""),
              const Spacer(), // use Spacer
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    const Text(
                      'Automovil',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2.0),
                    ),
                    const Text(
                      'Griss',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2.0),
                    )
                  ]),
              Container(
                padding: const EdgeInsets.all(15.0),
                child: Image.network(
                  "https://cdn.pixabay.com/photo/2018/04/19/00/56/mercedes-benz-3332089_960_720.png",
                  width: 300,
                ),
              )
            ],
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                // Navigate back to first route when tapped.
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                primary: const Color(0xff004D40),
                shadowColor: Colors.black,
              ),
              child: const Text('Home!'),
            ),
          ),
        ]));
  }
}
