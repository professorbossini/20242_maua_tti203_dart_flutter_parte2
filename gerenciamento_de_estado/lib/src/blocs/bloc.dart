import 'dart:async';

import 'package:gerenciamento_de_estado/src/blocs/validators.dart';

class Bloc with Validators{
  final _emailController = StreamController <String> ();
  final _passwordController = StreamController <String> ();

  //email em vez de falar emailController.stream
  Stream <String> get email => _emailController.stream.transform(validateEmail);

  //password em vez de falar passwordController.stream
  Stream <String> get password => _passwordController.stream.transform(validatePassword);

  //changeEmail em vez emailStream.sink.add
  Function(String) get changeEmail => _emailController.sink.add;

  //changePassword em vez de passwordStream.sink.add
  Function(String) get changePassword => _passwordController.sink.add;
  
  //descartar
  void dispose(){
    _emailController.close();
    _passwordController.close();
  }
}
// final bloc = Bloc();