import 'package:flutter/material.dart';
import '../blocs/bloc.dart';
class LoginTela extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(28),
      child: Column(
        children: [
          emailField(),
          passwordField(),
          Row(children: [
            Expanded(
              child: Container(
                  margin: EdgeInsets.only(top: 12), child: submitButton()),
            )
          ])
        ],
      ),
    );
  }
  Widget emailField() {
    return StreamBuilder(
      stream: bloc.email, 
      builder: (context, AsyncSnapshot<String> snapshot){
        return TextField(
          onChanged: (newValue){
            bloc.chanceEmail(newValue);
          },
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            hintText: 'seu@email.com', 
            labelText: 'Digite seu e-mail',
            // resolvendo o problema do null no inicio
            //errorText: snapshot.error.toString() == 'null' ? null : snapshot.error.toString()
            errorText: snapshot.error?.toString() //outra forma de fazer a mesma coisa
          )
        );
      },
    );
    // return TextField(
    //     keyboardType: TextInputType.emailAddress,
    //     decoration: InputDecoration(
    //         hintText: 'seu@email.com', labelText: 'Digite seu e-mail'));
  }
  Widget passwordField() {
    return StreamBuilder(
        stream: bloc.password,
        builder:(context, AsyncSnapshot<String> snapshot) => TextField(
              onChanged: bloc.chancePassword, //mais uma forma de fazer a mesma coisa
              obscureText: true,
              decoration: InputDecoration(
                  hintText: 'Senha', labelText: 'Digite sua senha',
                  // resolvendo o problema do null no inicio
                  errorText: snapshot.error.toString() == 'null' ? null : snapshot.error.toString()
              ),
          )
    );
    // return TextField(
  }
  Widget submitButton() {
    return ElevatedButton(
      child: Text('Entrar'),
      onPressed: () {},
    );
  }
}
