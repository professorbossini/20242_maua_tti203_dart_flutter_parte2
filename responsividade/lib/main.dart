import 'package:flutter/material.dart';

void main(){
  runApp(App());
}

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Minha aplicação responsiva',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: MeuLayoutResponsivo(),
    );    
  }
}

class MeuLayoutResponsivo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meu app'),
      ),
      body: LayoutBuilder(
        builder: (context, constraints){
          return constraints.maxWidth <= 768 ?
            const Text ('Pequeno') :
            const Text ('Grande');
        },
      ),
    );  
  }
}

class MobileLayout extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return MobileLayoutState();
  }
}

class MobileLayoutState extends State <MobileLayout>
                        with SingleTickerProviderStateMixin{
  
  TabController? tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    throw UnimplementedError(); 
  }
}