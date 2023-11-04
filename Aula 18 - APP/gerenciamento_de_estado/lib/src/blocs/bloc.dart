import 'dart:async';

import 'package:gerenciamento_de_estado/src/blocs/validators.dart';

class Bloc with Validators{
  final _emailController = StreamController<String>();
  final _passwordController = StreamController<String>();

  Stream <String> get email => _emailController.stream.transform(validate_Email);
  Stream <String> get password => _passwordController.stream.transform(validate_Password);
  
  Function(String) get chanceEmail => _emailController.sink.add;
  Function(String) get chancePassword => _passwordController.sink.add;

  void dispose(){
    _emailController.close();
    _passwordController.close();
  }
}

//final bloc = Bloc(); // Singleton - Apenas uma instancia do bloc não é mais necessários, pois o bloc está sendo injetado no app.dart
