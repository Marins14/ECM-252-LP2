// exibir hello flutter 
//importar a biblioteca flutter

import 'package:flutter/material.dart';
// escrever a função main 
void main(){
// construir o widget que exibe o texto 
final app = MaterialApp(
home: Text('Hello Flutter'),
);
// exibir o widget
runApp(app);
}


//hot reload: r 
//hot restart: shift + R
//full restart: CTRL + C 