import 'dart:async';

import 'package:email_validator/email_validator.dart';
mixin Validators{

  final validateEmail = StreamTransformer<String, String>.fromHandlers(
    handleData: (email, sink){
      //escrever a seguinte lógica sem olhar na apostila
      //se o e-mail for válido, adicioná-lo ao sink, ou seja, encontre um método no sink para isso
      //caso contrário, adicionar a mensagem "e-mail inválido ao sink"
      String event;
      if(EmailValidator.validate(email)){
        event = email;
      }
      else {
        event = "e-mail inválido ao sink";
      }
      sink.add(event);
    }
  );

  //fazer o validador de senhas. uma senha é válida somente se tiver pelo menos 4 caracteres
  final validatePassword = StreamTransformer<String, String>.fromHandlers(
    handleData: (password, sink) {
      //se a senha for válida (>= que 4), adiciona-lo ao sink. se não, adicionar a mensagem "senha inválida ao sink"
      String event;
      if(password.length >= 4){
        event = password;
      }
      else {
        event = "senha inválida ao sink";
      }
      sink.add(event);
    }
  );

}