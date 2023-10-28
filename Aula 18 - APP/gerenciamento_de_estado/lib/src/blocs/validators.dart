import 'dart:async';

import 'package:email_validator/email_validator.dart';

mixin Validators {
  final validate_Email =
      StreamTransformer<String, String>.fromHandlers(handleData: (email, sink) {
    if (EmailValidator.validate(email)) {
      sink.add(email);
    } else {
      sink.addError('Insira um e-mail válido');
    }
  });
  final validate_Password = StreamTransformer<String, String>.fromHandlers(
    handleData: (password, sink) {
      // Usar regExp para verificar se a password contem
      // Pelo menos uma maiuscula
      RegExp exp = RegExp("[A-Z]+");
      //if (!exp.hasMatch(input)) -> Continuar a partir daqui para validar a senha
      // Pelo menos um numero
      // Pelo menos um caracter especial
      // Pelo menos 8 caracteres
      //RegExp exp = RegExp("^(?=.*[a-z])(?=.*[A-Z])(?=.*d)(?=.*[!@#\$%^&*])(?=.{8,})");
    },
  );
}

// Exemplos regExp
// void main(){
//   var senhavalida = "SenhaVal1da!";
//   var senhaSemMaiusc = 'senhaval1da!';
//   var senhaMaiu = 'SENHAVAL1DA!';
//   var senhaSNum = 'SenhaVal1da!';
//   var senhaSC = 'Senhaval1da';
  
//   var senhas = [
//     senhavalida,
//     senhaSemMaiusc,
//     senhaMaiu,
//     senhaSNum,
//     senhaSC
//   ];
  
//   RegExp r = RegExp('[A-Z]+');
//   for (final senha in senhas){
//     print(r.hasMatch(senha));
//   }
//   print("***********************************");
//   r = RegExp('[a-z]+');
//   for (final senha in senhas){
//     print(r.hasMatch(senha));
//   }
//   print("***********************************");
//   //r = RegExp('[0-9]+');
//   r = RegExp(r'\d+');
//   for (final senha in senhas){
//     print(r.hasMatch(senha));
//   }
//   print("***********************************");
//   r = RegExp(r'[^a-zA-Z0-9]+');
//   for (final senha in senhas){
//     print(r.hasMatch(senha));
//   }
// }