//Quero exibir: Olá, meu mixin!
mixin DizerOla{
  String ola(){
    return "Olá";
  }
  void quemSouEu(){
    print("DizerOla");
  }
}
mixin DizerMeuMixin{
  String meuMixin(){
    return "meu mixin";
  }
  
  void quemSouEu(){
    print("DizerMeuMixin");
  }
}

class OlaMeuMixin with DizerMeuMixin, DizerOla{
  void olaMeuMixin(){
    print('${ola()}, ${meuMixin()}');
  }
}

void main(){
  final teste = OlaMeuMixin();
  teste.olaMeuMixin();
  teste.quemSouEu();
}