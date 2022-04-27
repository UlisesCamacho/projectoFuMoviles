import 'package:flutter/material.dart';
import 'dart:developer';

import 'package:projectv1/menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      title: 'Flutter Demo',
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final myController1 = TextEditingController();
  final myController2 = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Demo Home Page'),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Image.network('https://www.hola.com/imagenes/estar-bien/20190426140762/perro-huevo-pompom-gt/0-669-982/portada-pompom-t.jpg'),

            ),

            Padding(
              padding: EdgeInsets.only(top: 45.0),
              child:Text('Usuario:',),
            ),
            Padding(
              padding: EdgeInsets.all(30.0),
              child:TextField( controller: myController1,),
            ),

            Text('Contraseña:',),
            Padding(
              padding: EdgeInsets.all(30.0),
              child:TextField( controller: myController2, obscureText: true,),

            ),

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
      if(myController1.text=="admin" && myController2.text=="admin" ) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => menu()),
        );
      }
      else{
        showDialog(
            context: context,
            builder: (context) {
                return AlertDialog(content: Text("Haz colocado los datos incorrectos"),);

            }
        );
      }
        },
        child: const Icon(Icons.admin_panel_settings_outlined),
      ),
    );
  }
}

