//import para captura de dados
import 'dart:io';
//import para geração de valores aleatórios
import 'dart:math';
//1: pedra, 2: papel, 3: tesoura, 4: sair usando um enum
enum Jogo{
  Pedra,
  Papel,
  Tesoura,
  Sair
}
void main(){
  //exibir menu
  for (; ;){
  int selected;  
 
  //capturar a opção do usuário, fazendo validação com
  //do//while
  do{
    print("Escolha uma das opções abaixo: \n 1:Pedra,\n 2: Papel,\n 3:Tesoura,\n 4: Sair" );
    selected = int.parse(stdin.readLineSync()!);
  }while(selected<0 || selected >4); 
  //se o usuário digitar 4, sair
  if( selected == 4){
    print("Saindo do jogo....");
    exit(10);
  }
  //senão
  else{
  //sortear a opção do computador
  final pc_var = Random();
  final opc_pc = pc_var.nextInt(3)+1;
  //mapear a opção do usuário de int para enum
  var jogada_jog;
  switch(selected){
    case 1:
      jogada_jog = Jogo.Pedra.name;
    break;
    case 2:
      jogada_jog = Jogo.Papel.name;
    break;
    case 3:
      jogada_jog = Jogo.Tesoura.name;
    break;
  }
  //mapear a opção do computador de int para enum
  var jogada_pc;
  switch(opc_pc){
    case 1:
      jogada_pc = Jogo.Pedra.name;
    break;
    case 2:
      jogada_pc = Jogo.Papel.name;
    break;
    case 3:
      jogada_pc = Jogo.Tesoura.name;
    break;
  } 
  //exibir as opções de cada um
  // print(jogada_pc);
  // print(jogada_jog);
  //você (pedra) vs (tesoura) computador
  print(jogada_pc);
  print(jogada_jog);
  print(Jogo.Pedra);
  if(jogada_pc == jogada_jog){
    print("RESULTADO FINAL: \n ");
    print("Empate");
  }else{
  if((jogada_jog == Jogo.Pedra.name && jogada_pc == Jogo.Tesoura.name) || 
    (jogada_jog == Jogo.Tesoura.name && jogada_pc == Jogo.Papel.name) || 
    (jogada_jog == Jogo.Papel.name && jogada_pc == Jogo.Pedra.name)){
    print("RESULTADO FINAL: \n ");
    print("Você superou a máquina!\n ");
  }else{
    print("RESULTADO FINAL: \n");
    print("Você Perdeu!\n ");
    }
  }
  
  //verificar o resultado (vencedor ou empate) e exibir
  print('***********************************');
  //exibir *********************************8
  //esperar 5 segundos
  sleep(Duration(seconds:5));
    }
  }
}