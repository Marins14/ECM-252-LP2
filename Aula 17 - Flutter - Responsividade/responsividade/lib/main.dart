import 'package:flutter/material.dart';
void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplicação Responsiva com breakpoint!',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: MeuLayoutResponsivo(),
    );
    
  }
}
class MeuLayoutResponsivo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App Responsiva!")
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints){
          return Text(constraints.maxWidth <= 576 ? 'Pequena': 'Grande');
        }
      )
    );
  }
}