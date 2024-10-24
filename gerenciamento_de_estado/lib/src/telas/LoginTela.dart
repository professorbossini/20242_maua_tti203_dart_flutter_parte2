import 'package:flutter/material.dart';
import '../blocs/bloc.dart';
import '../blocs/provider.dart';
class LoginTela extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final bloc = Provider.of(context);
    return Container(
      margin: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          //encaixar os widgets de email e senha aqui
          emailField(bloc),
          passwordField(bloc),
          Container(
            margin: EdgeInsets.only(top: 12.0),
            child: Row(
              children: [
                Expanded(
                  child: submitButton(bloc)
                )
              ],
            ),
          )
        ],
      ),
    );
  }
  Widget emailField(Bloc bloc){
    return StreamBuilder(
      stream: bloc.email, //descobrir quem é
      builder:(context, AsyncSnapshot<String> snapshot){
        return TextField(
          // onChanged: bloc.changeEmail,
          onChanged: (newValue){
            bloc.changeEmail(newValue);
          },
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            hintText: 'seu@email.com',
            labelText: 'Endereço de e-mail',
          //acessar a propriedade errorText e associar a ela o erro que vem do snapshot
          //exibir o erro de maneira condicional, só exibe se tem com ternário
            errorText: snapshot.hasError ? snapshot.error.toString() : null,
          )
          
        );
      }
    );
    //escolher o tipo do teclado, apropriado para email
    //exibir um texto de "dica" para o usuário, dizendo a ele que ele deve digitar um email
    // return TextField(
    //   keyboardType: TextInputType.emailAddress,
    //   decoration: InputDecoration(
    //     hintText: 'seu@email.com',
    //     labelText: 'Endereço de e-mail'
    //   ),
    // );
  }
  //escrever novo método que produz um campo próprio para senha
  Widget passwordField(Bloc bloc){
    return StreamBuilder(
      stream: bloc.password, 
      builder: (context, AsyncSnapshot <String> snapshot){
        return TextField(
          onChanged: bloc.changePassword,
          obscureText: true,
          decoration: InputDecoration(
            hintText: 'Senha',
            labelText: 'Senha',
            errorText: snapshot.hasError ? snapshot.error.toString() : null
          ),
        );
      }
    );
  }
  //escrever novo método que produz um botão
  Widget submitButton(Bloc bloc){
      return StreamBuilder(
        stream: bloc.emailAndPasswordOK, 
        builder: (context, AsyncSnapshot <bool> snapshot){
          return ElevatedButton(
            onPressed: snapshot.hasData ? (){} : null, 
            child: Text('Ok')
          );
        }
      );
      
  }
}