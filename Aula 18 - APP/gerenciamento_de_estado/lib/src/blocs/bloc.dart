import 'dart:async';

import 'package:gerenciamento_de_estado/src/blocs/validators.dart';

class Bloc with Validators{
  final _emailController = StreamController<String>();
  final _passwordController = StreamController<String>();

  Stream <String> get email => _emailController.stream;
  Stream <String> get password => _passwordController.stream;
  
  Function(String) get chanceEmail => _emailController.sink.add;
  Function(String) get chancePassword => _passwordController.sink.add;

}
