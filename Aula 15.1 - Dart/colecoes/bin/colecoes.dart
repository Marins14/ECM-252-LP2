// class Girafa{

// }

// class Pessego{

// }

import 'dart:io';
void main() {
  var contato = {};
  for (;;) {
    int selected;
    do {
      print("\t Bem vindo a lista de contatos! ");
      print("\t Escolha uma das opções abaixo");
      print("\t 1 - Cadastrar");
      print("\t 2 - Exibir");
      print("\t 3 - Update Usuário");
      print("\t 4 - Deletar");
      print("\t 5 - Sair");
      selected = int.parse(stdin.readLineSync()!);
    } while (selected < 1 || selected > 5);
    if (selected == 5) {
      print("Obrigado! Até mais");
      exit(10);
    } else {
      if (selected == 1) {
        print("Digite o usuário: ");
        var user = (stdin.readLineSync()).toString();
        print("Digite o telefone: ");
        var tel = stdin.readLineSync().toString();
        contato.addAll({user: tel});
        //print(contato.runtimeType);
        //print(contato);
      }
      if (selected == 2) {
        print("Temos os contatos salvos \n $contato");
      }
      if (selected == 3) {
        print("Digite o usuário a ser modificado: ");
        var usermod = stdin.readLineSync().toString();
        print("Qual o novo telefone ?");
        var newnumber = stdin.readLineSync().toString();
        contato.update(usermod, (value) => newnumber);
      }
    }
    if (selected == 4) {
      print("Digite o usuário a ser deletado: ");
      var deluser = stdin.readLineSync().toString();
      contato.remove(deluser);
    }
    print('************************************ \n');
    sleep(Duration(seconds: 1));
  }
}
  // key, values, entries
  // var pessoa = <String, Object>{
  //   'nome': 'Ana',
  //   'Idade': 18
  // };

  // // keys
  // var chaves = pessoa.keys;
  // print(chaves.runtimeType);
  // for(final chave in chaves){
  //   print(chave);
  //   //print(pessoa[chave]);
  // }

  // // values
  // var valores = pessoa.values;
  // for(final valor in valores){
  //   print(valor);
  // }

  // // entries
  // var entries = pessoa.entries;
  // for(final entry in entries){
  //   print(entry);
  //   print(entry.key);
  //   print(entry.value);
  // }

  // type annotation
  // var pessoa = <String, dynamic>{
  //   'nome': 'Joao'
  // };
  // print(pessoa['nome'].runtimeType);
  // var nome = pessoa['nome'] as String;
  // print(nome.toUpperCase());

  // Map<String,Object> pessoa = {
  //   'nome':'Ana',
  //   'idade': 22
  //  };
  // print(pessoa['nome']);
  // print(pessoa['altura']);
  // Map pessoa2 = {

  // };

  // var teste ={
  //   Girafa():Pessego()
  // };
  // var pessoa ={
  //   'nome':'Ana',
  //   'idade':22,
  //   'altura':1.8,
  //   'deMaior': true
  // }; //mapa
  // print(pessoa.runtimeType);

  // var pessoa2 = {
  //   'idade': 29,
  //   'altura': 1.8
  // };
  // print(pessoa2.runtimeType);
//}
