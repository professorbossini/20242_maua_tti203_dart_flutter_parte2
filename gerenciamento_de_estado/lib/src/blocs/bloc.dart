import 'dart:async';
import 'package:rxdart/rxdart.dart';
import 'package:gerenciamento_de_estado/src/blocs/validators.dart';
import 'package:fluttertoast/fluttertoast.dart';
class Bloc with Validators{
  
  final _emailController = BehaviorSubject <String>();
  final _passwordController = BehaviorSubject <String>();

  Stream<String> get email => _emailController.stream.transform(validateEmail);

  Stream<String> get password => _passwordController.stream.transform(validatePassword);

  Stream<bool> get emailAndPasswordOK => CombineLatestStream.combine2(email, password, (e, p) => true);

  Function(String) get changeEmail => _emailController.sink.add;

  Function(String) get changePassword => _passwordController.sink.add;

  void submitForm(){
    final email = _emailController.value;
    final password = _passwordController.value;
    Fluttertoast.showToast(
      msg: 'E-mail: $email, Senha: $password',
      timeInSecForIosWeb: 5,
      webBgColor: '#CCC'
    );

  }

  void dispose(){
    _emailController.close();
    _passwordController.close();
  }
  
}
//essa era a instância global, não precisa mais
// final bloc = Bloc();