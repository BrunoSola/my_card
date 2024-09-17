import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 69, 56, 255),
        body: Center(
          child: SafeArea(
            child: Column(
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/perfil_avatar.jpg'),
                  radius: 50.0,
                ),
                Text(
                  'Bruno dos Reis Sola', 
                  style: TextStyle(
                    fontSize: 40.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Pacifico',
                  ),
                ),
                Text(
                  'DESENVOLVEDOR FLUTTER',
                  style: TextStyle(              
                    fontFamily: 'SourceCodePro',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.yellow,
                    letterSpacing: 2,
                  ),
                ),
                Container(child: Row(),)),
              ],
            ),
          ),
        ),
      ),
    );
  }

}