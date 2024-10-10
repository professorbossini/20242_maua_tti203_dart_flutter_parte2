import 'package:flutter/material.dart';

class LoginTela extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20.0),
      child: const Column(
        //4. Encaixar os dois métodos, ou seja, exibir os dois campos
        children: [
          Text('Filho 1'),
          Text('Filho 2')  
        ],
      ),
    );
  }

  //1. restringir o teclado para que ele seja apropriado para a digitação de e-mail
  //2. Exibir uma dica instruindo o usuário a digitar o seu e-mail
  Widget emailField(){
    return TextField();
  }

  //3. Escrever um método semelhante ao método emailField que produz um Widget próprio para a exibição de um campo para senha

  //5. implementar um método para produzir um botão