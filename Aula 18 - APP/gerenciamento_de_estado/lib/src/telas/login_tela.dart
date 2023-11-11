import 'package:flutter/material.dart';
import '../blocs/bloc.dart';
import '../blocs/provider.dart';

class LoginTela extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bloc = Provider.of(context);
    return Container(
      margin: EdgeInsets.all(28),
      child: Column(
        children: [
          nameField(bloc),
          emailField(bloc),
          passwordField(bloc),
          Row(children: [
            Expanded(
              child: Container(
                  margin: EdgeInsets.only(top: 12), child: submitButton(bloc)),
            )
          ])
        ],
      ),
    );
  }

  Widget nameField(Bloc bloc){
    return StreamBuilder(
      stream: bloc.name,
      builder: (context, AsyncSnapshot<String> snapshot) {
        return TextField(
          onChanged: bloc.changeName,
          keyboardType: TextInputType.name,
          decoration: InputDecoration(
            hintText: 'Nome',
            labelText: 'Digite seu nome',
            errorText: snapshot.error?.toString()
          ),
        );
      },
    );
  }

  Widget emailField(Bloc bloc) {
    return StreamBuilder(
      stream: bloc.email,
      builder: (context, AsyncSnapshot<String> snapshot) {
        return TextField(
            onChanged: (newValue) {
              bloc.changeEmail(newValue);
            },
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
                hintText: 'seu@email.com',
                labelText: 'Digite seu e-mail',
                // resolvendo o problema do null no inicio
                //errorText: snapshot.error.toString() == 'null' ? null : snapshot.error.toString()
                errorText: snapshot.error
                    ?.toString() //outra forma de fazer a mesma coisa
              )
        );
      },
    );
    // return TextField(
    //     keyboardType: TextInputType.emailAddress,
    //     decoration: InputDecoration(
    //         hintText: 'seu@email.com', labelText: 'Digite seu e-mail'));
  }

  Widget passwordField(Bloc bloc) {
    return StreamBuilder(
        stream: bloc.password,
        builder: (context, AsyncSnapshot<String> snapshot) => TextField(
              onChanged:
                  bloc.changePassword, //mais uma forma de fazer a mesma coisa
              obscureText: true,
              decoration: InputDecoration(
                  hintText: 'Senha',
                  labelText: 'Digite sua senha',
                  // resolvendo o problema do null no inicio
                  errorText: snapshot.error.toString() == 'null'
                      ? null
                      : snapshot.error.toString()),
          ));
  }
  
  Widget submitButton(Bloc bloc) {
    return StreamBuilder(
      stream: bloc.emailNameAndPasswordOk,
      builder: (context, AsyncSnapshot<bool> snapshot) {
        return ElevatedButton(
          onPressed: snapshot.hasData ? () => bloc.subimitForm(context) : null,
          child: Text('Entrar'),
        );
      },
    );
  }
}