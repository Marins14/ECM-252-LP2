import 'package:flutter/material.dart';
import '../models/image_model.dart';

class ImageList extends StatelessWidget {
  final List<ImageModel> imagens;

  ImageList(this.imagens);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: imagens.length,
      itemBuilder: (BuildContext context, int index){ 
        // exibir o alt, caso o elemento seja par, senão exibir a url
        //return Text(index.isEven ? imagens[index].alt : imagens[index].url);
        //return Text(imagens[index].toString());
        return Image.network(imagens[index].url);     
        }); 
    }
}

