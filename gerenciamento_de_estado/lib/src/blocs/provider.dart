import 'package:flutter/material.dart';
import 'bloc.dart';
class Provider extends InheritedWidget{

  final bloc = Bloc();
  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return true;      
  }

  static Bloc of (BuildContext context){
    return context.dependOnInheritedWidgetOfExactType<Provider>()!.bloc;
  }

  // se fosse em Java...
  // Provider(Key key, Widget child){
  //   super(key, child);
  // }
  Provider({Key? key, required Widget child}) : super(key: key, child: child);


}