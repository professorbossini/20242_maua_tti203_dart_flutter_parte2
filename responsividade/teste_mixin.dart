//Exibir a mensagem Olá, Rodrigo

mixin DizerOlaMixin{
  String dizerOla(){
    return "Olá";
  }

  void quemSouEu(){
    print("Olá");
  }
}

mixin DizerNomeMixin{
  String dizerNome(){
    return "Rodrigo";
  }

  void quemSouEu(){
    print("nome");
  }
}
class DizerTudo with DizerOlaMixin, DizerNomeMixin{
  void dizerTudo(){
    print('${dizerOla()}, ${dizerNome()}');
  }
}

void main(){
  final teste = DizerTudo();
  teste.dizerTudo();
  teste.quemSouEu();
}