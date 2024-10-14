import 'package:flutter/material.dart';

class LoginTela extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Column(
        children: [
          emailField(),
          passwordField(),
          Container(
            margin: EdgeInsets.only(top: 12.0),
            child: Row(
              children: [
                Expanded(
                  child: submitButton(),
                )
              ],
            )
          )
        ],
      ),
    );
  }

  Widget emailField(){
    return TextField(
      //1. restringir o tipo do teclado para que ele suba de maneira apropriada para a digitação de e-mails
      keyboardType: TextInputType.emailAddress,
      //2. exibir um texto explicando para o usuário o que ele deve digitar, ou seja, uma espécie de placeholder
      decoration: InputDecoration(
        hintText: 'seu@email.com',
        labelText: "Digite seu e-mail"
      ),
    );
  }

  Widget passwordField(){
    return TextField(
      //ocultar o texto, fazendo as bolinhas aparecerem quando o usuário digita
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'senha',
        labelText: "Digite sua senha"
      ),
    );
  }

  Widget submitButton(){
    return ElevatedButton(
      onPressed : (){}, 
      child: Text('Login')
    );
  }
}

