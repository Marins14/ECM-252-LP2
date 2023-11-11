import 'package:flutter/material.dart';
import '../blocs/bloc.dart';
import '../models/contato_model.dart';
import '../widgets/contato_widget.dart';

class ContatosWidget extends StatelessWidget {
  String _nomeAtual = '';
  String _numeroAtual = '';

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(20),
        child: Column(children: <Widget>[
          nomeField(),
          Text('numeroField()'),
          Container(
              margin: EdgeInsets.only(top: 12),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Text('submitButton()') //submitButton(),
                  )
                ],
              )),
          Text('contatosList()')
        ]));
  }

  Widget nomeField() {
    return StreamBuilder(
      stream: bloc.nome,
      builder: (context, AsyncSnapshot<String> snapshot) {
        return TextField(
          onChanged: (valorDigitado){
            bloc.changeNome(valorDigitado);
            _nomeAtual = valorDigitado;
          },
          keyboardType: TextInputType.name,
          decoration: InputDecoration(
              labelText: 'Nome',
              hintText: 'Digite o nome do contato',
              errorText: snapshot.hasError? '${snapshot.error}' : null),
        );
      },
    );
  }

  //Widget numeroField() {}
}
