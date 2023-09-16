import 'package:flutter/widgets.dart';

import 'package:flutter/material.dart';

class App extends StatefulWidget{
  @override
    State<App> createState(){
    return AppState();
  }
}

class AppState extends State<App> {
  int numeroImagens = 0;
  @override
  Widget build(BuildContext context) {
    // construir o widget que exibe o texto
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Minhas Imagens"),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: (){
              setState(() {
                {numeroImagens++;
            };
              });
            },
            child: Icon(Icons.add_a_photo)),
        body: Text('$numeroImagens'),
      ),
    );
  }
}

