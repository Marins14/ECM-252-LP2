// void main() {
//   // print('Hello world!');
//   //var 
//   var nomes = ['Ana','Jonas'];
//   for(String nome in nomes){
//     print(nome);
//   }
//   //for 
//   for(int i = 0;i<=10; i++){
//     print(i);
//   }
//   int i = 0;
//   // while
//   while(i<10){
//     print(i);
//     i++;
//   }
//   int contador = 0;
//   do{
//     print(contador++);
//   }while(contador<0);
//   //loop infinito while true
//   for ( ; ; ){
//     print('loop inifito');
//   }
// }
// enum DiaDaSemana{
//   segunda,
//   terca,
//   quarta,
//   quinta,
//   sexta,
//   sabado,
//   domingo
// }
// void main(){
//   print(DiaDaSemana.values);
//   DiaDaSemana dia = DiaDaSemana.quarta;
//   print(dia.index);
//   print(dia.name);
//   print(dia.runtimeType);
//   print(dia.toString());
// //   final SEGUNDA = 0; 
// //   final TERCA = 1; 
// //   final QUARTA = 2;
//   switch(dia){
//     case DiaDaSemana.segunda:
//       print("NÃÃOOO");
//       break;
//     case DiaDaSemana.terca:
//       print(":(");
//       break;
//     case DiaDaSemana.quarta:
//     print(":)");
//     break;
//     case DiaDaSemana.quinta: 
//       print("XD");
//       break;
//     case DiaDaSemana.sexta:
//       print("AEEEEOOOOO");
//     break;
//     case DiaDaSemana.sabado: 
//       print("AEEEE GARAI");
//       break;
//     case DiaDaSemana.domingo: 
//       print("Depressão");
//       break;
//   }
// }
// import 'dart:io';
// void main(){
//   // import 'dart:io'; 
//   // stdin: standart input
//   // stdout: standar output
//   // entrada de dados: 
//   // var nome = stdin.readLineSync();
//   // print(nome);
//   // Integer.parseInt
//   // var entrada = stdin.readLineSync();
//   // if(entrada != null){
//   //   //sound null safety 
//   //   int idade = int.parse(entrada);
//   //   print(idade);
//   // }
//   int idade = int.parse(stdin.readLineSync()!); // o ! garante para o compilador que não terá erro. 
//   print(idade);
// }

import 'dart:ffi';
import 'dart:math';
void main(){
  final gerador = Random();
  final n1 = gerador.nextInt(6); // [0,6[
  final n2 = gerador.nextInt(10)+1; //[1,11[
  final n3 = gerador.nextInt(101); // [0,101[
  final n4 = gerador.nextDouble(); // [0,1[
  final n5 = gerador.nextDouble()*100; //[0,100[
  final n6 = gerador.nextDouble()*50+100; // [100,150[
  // inteiro no intervalo 17 a 22 
  final n7 = gerador.nextInt(6)+ 17;
  // real no intervalo 2500 a 3500
  final n8 = gerador.nextDouble()*1000 + 2500; 
  final vaiChover = gerador.nextBool(); // true or false
  
}