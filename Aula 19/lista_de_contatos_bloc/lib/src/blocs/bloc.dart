import 'validators.dart';
import 'dart:async';
import '../models/contato_model.dart';
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

class Bloc with Validators{
  final _nomeController = StreamController<String>.broadcast();
  final _numeroController = StreamController<String>.broadcast();
  

  Stream<String> get nome => _nomeController.stream.transform(validarNome);
  Stream<String> get numero => _numeroController.stream.transform(validarNumero);
  Stream<bool> get nameAndNumberOk => CombineLatestStream.combine2(nome, numero, (no, nm) => true);

  Function(String) get changeNome => _nomeController.sink.add;
  Function(String) get changeNumero => _numeroController.sink.add;

  final _contatosController = StreamController<List<Contato>>();
  
  Stream<List <Contato>> get contato => _contatosController.stream;
  final List<Contato> _contatos = [];

  void adicionarContato(Contato contato){
    _contatos.add(contato);
    _contatosController.sink.add(_contatos);
  }

  void dispose(){
    _nomeController.close();
    _numeroController.close();
    _contatosController.close();
  }
}
final bloc = Bloc();