import 'package:flutter/material.dart';
class LoginTela extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20.0),
      child: const Column(
        children: [
          //encaixar os widgets de email e senha aqui
          Text("Filho 1"),
          Text("Filho 2")
        ],
      ),
    );
  }
  Widget emailField(){
    //escolher o tipo do teclado, apropriado para email
    //exibir um texto de "dica" para o usuário, dizendo a ele que ele deve digitar um email
    return TextField();
  }
  //escrever novo método que produz um campo próprio para senha

  //escrever novo método que produz um botão
}