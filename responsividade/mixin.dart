//Olá, Rodrigo
mixin DizerOlaMixin{
  String dizerOla(){
    return "Olá";
  }
  void m(){
    print("DizerOla.m");
  }
}

mixin DizerNomeMixin{
  String dizerNome(){
    return "Rodrigo";
  }
  void m(){
    print("DizerNome.m");
  }
}

class OlaNome with DizerNomeMixin, DizerOlaMixin{
  void dizerTudo(){
    print('${dizerOla()}, ${dizerNome()}');
  }
} 

void main(){
  final teste = OlaNome();
  teste.dizerTudo();
  teste.m();
}