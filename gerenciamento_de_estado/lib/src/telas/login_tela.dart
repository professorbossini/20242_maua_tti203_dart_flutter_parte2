import 'package:flutter/material.dart';
import '../blocs/bloc.dart';
class LoginTela extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20.0),
      child: Column(
        //4. Encaixar os dois métodos, ou seja, exibir os dois campos
        children: [
          emailField(),
          passwordField(),
          Container(
            margin: EdgeInsets.only(top: 12.0),
            child: Row(
              children: [
                Expanded(
                  child: submitButton()
                )
              ],
            ),
          )
            
        ],
      ),
    );
  }

  //1. restringir o teclado para que ele seja apropriado para a digitação de e-mail
  //2. Exibir uma dica instruindo o usuário a digitar o seu e-mail
  Widget emailField(){
    return StreamBuilder(
      stream: bloc.email,
      builder: (context, AsyncSnapshot <String> snapshot){
        return TextField(
          // onChanged: bloc.changeEmail
          onChanged: (valorDigitado){
            bloc.changeEmail(valorDigitado);
          },
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            hintText: 'seu@email.com',
            labelText: 'Digite seu e-mail',
            //se tem erro, mosdtrar o erro, senão, não mostrar nada
            //use um operador ternário
            // errorText: snapshot.hasError ? snapshot.error.toString() : null
            errorText: snapshot.error?.toString()
          ),
        );
      },
    );
  }
  //3. Escrever um método semelhante ao método emailField que produz um Widget próprio para a exibição de um campo para senha
  Widget passwordField(){
    return StreamBuilder(
      stream: bloc.password,
      builder: (context,  AsyncSnapshot <String> snapshot){
        return TextField(
          onChanged: bloc.changePassword,
          obscureText: true,
          decoration: InputDecoration(
            hintText: 'Senha',
            labelText: 'Digite sua senha',
            errorText: snapshot.error?.toString()
          ),
        );
      },
    );
    
    
    
  }
  //5. implementar um método para produzir um botão
  Widget submitButton(){
    return ElevatedButton(
      onPressed: (){}, 
      child: Text('Login')
    );
  }
}