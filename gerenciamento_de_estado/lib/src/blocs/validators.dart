import 'dart:async';

import 'package:email_validator/email_validator.dart';

mixin Validators{
  //visitar o pub.dev e encontrar um pacote capaz de validar e-mail
  final validateEmail = StreamTransformer<String, String>.fromHandlers(
    handleData: (email, sink){
      //tomar a seguinte decisão
      //se o e-mail for válido, adicioná-lo ao sink
      //senão
      //adicionar a mensagem de erro "Email inválido" ao sink
      if (EmailValidator.validate(email)){
        sink.add(email);
      }
      else{
        sink.addError('E-mail inválido');
      }
    }
  );

  //escrever novo validador para senha: uma senha somente é válida se tiver, pelo menos, 4 caracteres
  final validatePassword = StreamTransformer<String, String>.fromHandlers(
    handleData: (password, sink){
      if(password.length >= 4){
        sink.add(password);
      }
      else{
        sink.addError("Senha precisa ter, pelo menos, 4 caracteres");
      }
    }
  );
}