import 'dart:async';

mixin Validators {
  static final regExpNome = RegExp(r'[A-Z][a-z]{2,} [A-za-z]+');

  static final regExpNumero = RegExp('^\\([0-9]{2}\\) [0-9]{5}-[0-9]{4}\$');

  final validarNome = StreamTransformer<String, String>.fromHandlers(
    handleData: (nome, sink) {
      if (regExpNome.hasMatch(nome)) {
        sink.add(nome);
      } else {
        sink.addError('Nome inválido');
      }
    },
  );

  final validarNumero = StreamTransformer<String, String>.fromHandlers(
    handleData: (numero, sink) {
      if (regExpNumero.hasMatch(numero)) {
        sink.add(numero);
      } else {
        sink.addError('Número inválido');
      }
    },
  );
}
