// import 'dart:io';
// import 'dart:math';
// void main(){
//   // Jogo mega sena 
//   var jogoUsuario = <int> [];
//   // permitir que o usuario jogo cuidando da repeticao 
//   print("\n     Bem vindo a MEGA SENA! Let the game begin! 😈\n");
//   while (jogoUsuario.length <6){
//     stdout.writeln('Escolha o próximo numero');
//     var numero = int.parse(stdin.readLineSync()!);
//     if(numero < 1 || numero > 60){
//       stdout.writeln('Você não pode escolher $numero');
//       continue;
//     }
//     if(jogoUsuario.contains(numero)){
//       stdout.writeln('O valor $numero, já foi escolhido');
//       continue;
//     }
//     jogoUsuario.add(numero);
//   }
//   //sortear 6 numeros, sem repeticao 
//   var gerador = Random();
//   var jogoPc = <int> [];
//   //var jogoPc = [1,2,3,4,5,6];
//   while(jogoPc.length < 6){
//     var numero = gerador.nextInt(60)+1;
//     if(!jogoPc.contains(numero)){
//       jogoPc.insert(0,numero);
//     }
//   }
//   //ordernar as duas listas
//   jogoUsuario.sort(); // o metodo sort opera in place ele n altera a estrutura da lista nao gera outra lista
//   jogoPc.sort(); 
//   stdout.writeln('Jogo usuario: $jogoUsuario');
//   stdout.writeln('Jogo PC $jogoPc');
//   //verificar quais itens o jovem acertou 
//   jogoUsuario.forEach((numero) => {
//     if(jogoPc.contains(numero)){
//       print('Voce acertou o(s) numero(s): $numero')
//     }
//     //jogoPc.contains(numero),
//     //stdout.writeln(numero)
//   });
//   //se ele ganhou, avise 
//   if(jogoUsuario.every((numero) => jogoPc.contains(numero))){
//     stdout.writeln('Voce ganhou!');
//   }else{stdout.writeln('Você perdeu');}
// }


// //void main(){
//   // List nomes = ['Ana'];
//   // nomes.add(1);
//   //var nomes = <String> [];  //type anotation
//   //LISTAS 
//   //var nomes = ['Ana', 'Pedro']; // Arraylist 
//   //List<String> nomes = ['Ana','Pedro'];
//   //print(nomes); 
//   // print(nomes.toString());
//   // print(nomes[0]);
//   // print(nomes[1]);
//   // for(var i = 0; i< nomes.length;i++){
//   //   print(nomes[i]);
//   // }
//   // for(final nome in nomes){
//   //   print(nome);
//   // }
//   // print(nomes.isEmpty);
//   // print(nomes.first);
//   // print(nomes.firstOrNull);
//   // nomes.add('Cristina'); // add no final 
//   // nomes.insert(0,'Maria');
//   // print(nomes);
//   // nomes.insert(4,'João');
//   // print(nomes);
// //}


void main(){
  //tuplas = são imutaveis 
  // var tupla = ('Ana',1,true);
  // print(tupla);
  // print(tupla.runtimeType);
  // print(tupla.$1);


  //Set = conjuntos 
  //{1,2} = {2,1} = {1,1,1,1,1,2,2,2,2,2}
  //var nomes = {'Ana','Pedro','Jonas'}; // Set 
  //var teste = {}; // Map<dynamic, dynamic>  dicionário 
  //var outroTeste = <String>{}; //Set 
  //var maisumTeste = <String,String>{}; // Map
  // var paises = {'Brasil','Brasil'};
  // print(paises); 
  // var numeros ={1,2,3};
  // print(numeros.elementAt(0));
  // for(final numero in numeros){
  //   print(numero);
  // } 
  // var A = {1,2,3,4,5,6};
  // var B = {1,3,7};
  // print(A.union(B));
  // print(A.intersection(B));
  // print(A.difference(B));
  // print(A.difference(A));
  // print(B.difference(A)); 

  var portugues = {'Brasil','Portugal'};
  var europa = {'Espanha','Portugal','Alemanha'}; 
  //todos os paises a menos daqueles que são europeus e em que se falam PT-BR 
  print(europa.union(portugues).difference(portugues.intersection(europa)));
}