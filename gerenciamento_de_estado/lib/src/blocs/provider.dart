import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'bloc.dart';

class Provider extends InheritedWidget{
  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return true;
  }

  final bloc = Bloc();

  Provider({Key? key, required Widget child}): super(key: key, child: child);


  static Bloc of (BuildContext context){
    return context.dependOnInheritedWidgetOfExactType<Provider>()!.bloc;
  }

}