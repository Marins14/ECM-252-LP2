import 'package:flutter/material.dart';
// import 'package:lista_de_contatos_bloc/src/widgets/contato_widget.dart';
import 'widgets/contatos_widget.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lista de Contatos',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: ContatosWidget(),
      ),
    );
  }
}
