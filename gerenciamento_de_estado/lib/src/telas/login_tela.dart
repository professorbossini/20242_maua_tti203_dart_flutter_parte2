import 'package:flutter/material.dart';
import '../blocs/bloc.dart';
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
            child: submitButton()
          )
        ],
      ),
    );
  }

  Widget emailField(){
    return StreamBuilder(
      stream: bloc.email,
      builder: (context, AsyncSnapshot <String> snapshot){
        return TextField(
          onChanged: bloc.changeEmail,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            hintText: 'seu@email.com',
            labelText: "Digite seu e-mail",
            //use o operador ternário, para verificar se "tem erro" antes de mostrar. se tiver, mostre, senão, coloque um null
            errorText: snapshot.hasError ? snapshot.error.toString(): null
          ),
        );
    // pristine: puro, não tocado, imaculado
      },
    );
  }

  //faça a validação para o campo de senha também
  //desafio: usar o operador ?.
  Widget passwordField(){
    return StreamBuilder(
      stream: bloc.password,
      builder: (context, AsyncSnapshot <String> snapshot){
        return TextField(
          onChanged: bloc.changePassword,
          obscureText: true,
          decoration: InputDecoration(
            hintText: 'senha',
            labelText: "Digite sua senha",
            errorText: snapshot.error?.toString()
          ),
        );
      },
    );
  }

  Widget submitButton(){
    return ElevatedButton(
      onPressed : (){}, 
      child: Text('Login')
    );
  }
}

