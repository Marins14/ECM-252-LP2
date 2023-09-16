import 'package:exibe_imagens/src/models/image_model.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'dart:convert';

class App extends StatefulWidget{
  @override
    State<App> createState(){
    return AppState();
  }
}

class AppState extends State<App> {
  void obterImagem(){
    //1. Montar a URL incluindo: host, recurso e parâmetros de query(query, page, per_page)
    // Uri = uniforme resource identifier 
    final url = Uri.https('api.pexels.com','/v1/search', {'query': 'motorcycle', 'page': '$numeroImagens', 'per_page': '1'});
    //2. Montar um objeto Request com: método get e a URL construída anteriormente 
    final req = http.Request('get',url);
    //3. Adicionar o header Authorization à requisição, associando à nossa chave Pexels 
    req.headers.addAll({'Authorization': '6p8GRAAn8bWKzkCOs7XkR1msiI3xUojlOwpVbE9MlzyoztRjxPO6i1QW'});
    //4. Enviar requisição
    // IO-BOUND
    // inferno de callbacks hadouken
    req.send().then((result){
      http.Response.fromStream(result).then((response){
        //print(response.body);
        //json (string) >> map(string, dynamic) >> imageModel
        final decodedJSON = json.decode(response.body); 
        final imagem = ImageModel.fromJSON(decodedJSON);
        print(imagem);
        setState(() {
          numeroImagens ++;
        });
      });
    });
  }
  int numeroImagens = 1;
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
                //print(numeroImagens);
                obterImagem();
            },
            // (){
            //   setState(() {
            //     {numeroImagens++;
            // };
            //   });
            // },
            child: Icon(Icons.add_a_photo)),
        body: Text('$numeroImagens'),
      ),
    );
  }
}

