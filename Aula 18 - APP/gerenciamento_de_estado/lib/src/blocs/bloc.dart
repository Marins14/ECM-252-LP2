import 'dart:async';

import 'package:gerenciamento_de_estado/src/blocs/validators.dart';
import 'package:rxdart/rxdart.dart';
import 'package:cherry_toast/cherry_toast.dart';
import 'package:flutter/material.dart';

class Bloc with Validators {
  final _emailController = BehaviorSubject<String>();
  final _passwordController = BehaviorSubject<String>();
  final _nameController = BehaviorSubject<String>();

  Stream<String> get name => _nameController.stream.transform(validate_Name);
  Stream<String> get email => _emailController.stream.transform(validate_Email);
  Stream<String> get password =>_passwordController.stream.transform(validate_Password);
  

  //Stream<bool> get emailAndPasswordOk =>CombineLatestStream.combine2(email, password, (e, p) => true);
  Stream<bool> get emailNameAndPasswordOk => CombineLatestStream.combine3(email, password, name, (e, p, n) => true);

  void subimitForm(BuildContext context) {
    final validName = _nameController.value;
    final validEmail = _emailController.value;
    final validPassword = _passwordController.value;
    
    CherryToast.success(title: Text('$validEmail, $validPassword, $validName')).show(context);
  }

  Function(String) get changeName => _nameController.sink.add;
  Function(String) get changeEmail => _emailController.sink.add;
  Function(String) get changePassword => _passwordController.sink.add;

  void dispose() {
    _nameController.close();
    _emailController.close();
    _passwordController.close();
  }
}

//final bloc = Bloc(); // Singleton - Apenas uma instancia do bloc não é mais necessários, pois o bloc está sendo injetado no app.dart
