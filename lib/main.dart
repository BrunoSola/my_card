import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromRGBO(69, 56, 255, 1),
        body: Center(
          child: SafeArea(
            child: Column(
              children: <Widget>[
                const CircleAvatar(
                  backgroundImage: AssetImage('assets/images/perfil_avatar.jpg'),
                  radius: 50.0,
                ),
                const Text(
                  'Bruno dos Reis Sola', 
                  style: TextStyle(
                    fontSize: 40.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Pacifico',
                  ),
                ),
                const Text(
                  'DESENVOLVEDOR FLUTTER',
                  style: TextStyle(              
                    fontFamily: 'SourceCodePro',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.yellow,
                    letterSpacing: 2,
                  ),
                ),
                Container(
                  color: Colors.white,
                  margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
                  padding: const EdgeInsets.all(10.0),
                  child: const Row(
                    children: <Widget>[
                      Icon(
                        Icons.email,
                        color: Color.fromRGBO(69, 56, 255, 1),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        'Brunosola.profissional@gmail.com',
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.5,
                        ),
                      ),
                    ],
                  ),
                ),
              ]
            ),
          ),
        ),
      ),
    );
  }
}