import 'package:flutter/material.dart';
class LoginTela extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          //encaixar os widgets de email e senha aqui
          emailField(),
          passwordField(),
          submitButton()
        ],
      ),
    );
  }
  Widget emailField(){
    //escolher o tipo do teclado, apropriado para email
    //exibir um texto de "dica" para o usuário, dizendo a ele que ele deve digitar um email
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: 'seu@email.com',
        labelText: 'Endereço de e-mail'
      ),
    );
  }
  //escrever novo método que produz um campo próprio para senha
  Widget passwordField(){
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Senha',
        labelText: 'Senha'
      ),
    );
  }
  //escrever novo método que produz um botão
  Widget submitButton(){
    return Container(
      margin: EdgeInsets.only(top: 12.0),
      child: Row(
        children: [
          Expanded(
            child: ElevatedButton(
                onPressed: (){}, 
                child: Text('Login')
            ),
          )
        ],
      )
      
      
      
    );
  }
}