import 'package:flutter/material.dart';

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
    return TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            hintText: 'seu@email.com', labelText: 'Digite seu e-mail'));
  }
  Widget passwordField() {
    return TextField(
        keyboardType: TextInputType.visiblePassword,
        keyboardAppearance: Brightness.dark,
        obscureText: true,
        decoration:
            InputDecoration(hintText: 'Senha', labelText: 'Digite sua senha'));
  }
  Widget submitButton() {
    return ElevatedButton(
      child: Text('Entrar'),
      onPressed: () {},
    );
  }
}
