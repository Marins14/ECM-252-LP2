import 'dart:math';

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
          numeroField(),
          Container(
              margin: EdgeInsets.only(top: 12),
              child: Row(
                children: <Widget>[
                  Expanded(child: submitButton() //submitButton(),
                      )
                ],
              )),
          contatosList()
        ]));
  }

  Widget nomeField() {
    return StreamBuilder(
      stream: bloc.nome,
      builder: (context, AsyncSnapshot<String> snapshot) {
        return TextField(
          onChanged: (valorDigitado) {
            bloc.changeNome(valorDigitado);
            _nomeAtual = valorDigitado;
          },
          keyboardType: TextInputType.name,
          decoration: InputDecoration(
              labelText: 'Nome',
              hintText: 'Digite o nome do contato',
              errorText: snapshot.hasError ? '${snapshot.error}' : null),
        );
      },
    );
  }

  Widget numeroField() {
    return StreamBuilder(
      stream: bloc.numero,
      builder: (context, AsyncSnapshot<String> snapshot) {
        return TextField(
          onChanged: (valorDigitado) {
            bloc.changeNumero(valorDigitado);
            _numeroAtual = valorDigitado;
          },
          keyboardType: TextInputType.phone,
          decoration: InputDecoration(
              labelText: 'Número',
              hintText: 'Digite o número no formato (xx) xxxxx-xxxx',
              errorText: snapshot.hasError ? '${snapshot.error}' : null),
        );
      },
    );
  }

  Widget submitButton() {
    return StreamBuilder(
      stream: bloc.nameAndNumberOk,
      builder: (context, AsyncSnapshot<bool> snapshot) {
        return ElevatedButton(
            onPressed: snapshot.hasData
                ? () => bloc.adicionarContato(Contato(_nomeAtual, _numeroAtual))
                : null,
            child: Text('Adicionar'));
      },
    );
  }

  // Widget contatosList() {
  //   return StreamBuilder(
  //     stream: bloc.contato,
  //     builder: (context, AsyncSnapshot<List<Contato>> snapshot) {
  //       return ListView.builder(
  //         //padding: EdgeInsets.all(12),
  //         itemCount: snapshot.hasData ? snapshot.data!.length : 0,
  //         itemBuilder: (context, index) {
  //           return Container(
  //             margin: EdgeInsets.only(bottom: 12),
  //             child: ContatoWidget(
  //                 snapshot.data![index].nome, snapshot.data![index].numero
  //             ),
  //           );
  //         },
  //       );
  //     },
  //   );
  // }

  //Solução com o Column
  Widget contatosList() {
    return Container(
        margin: EdgeInsets.only(top: 12),
        child: StreamBuilder(
          stream: bloc.contato,
          builder: (context, AsyncSnapshot<List<Contato>> snapshot) {
            return Column(
              children: snapshot.hasData
                  ? snapshot.data!
                      .map((contato) =>
                          ContatoWidget(contato.nome, contato.numero))
                      .toList()
                  : [],
            );
          },
        ));
  }
}
