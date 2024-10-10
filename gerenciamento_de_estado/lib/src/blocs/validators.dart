import 'dart:async';

mixin Validators{
  final validateEmail = StreamTransformer<String, String>.fromHandlers(
    handleData: (email, sink){
      //faça um if/else
      //usando o EmailValidator, verifique se o e-mail é válido
      //se for válido, apenas adicione o e-mail ao sink
      //caso contrário adicione um ERRO ao sink com a mensagem "E-mail inválido"
      
    }
  );
}

//visitar o pub.dev e encontrar um pacote apropriado para a validação de e-mail