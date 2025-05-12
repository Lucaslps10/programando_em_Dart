class Carro{
  String _marca;
  String _modelo;
  int _ano;

  Carro(this._marca, this._modelo, this._ano);

  String get marca => _marca;
  String get modelo => _modelo;
  int get ano => _ano;

  set marca(String nome){
      _marca = nome;
  }
  set modelo(String nome){
      _modelo = nome;
  }
  set ano(int valor){
    _ano = valor;
  }

  void calcular_idade(int ano_atual){
    int idade_carro = ano_atual - ano;
    print("O carro tem $idade_carro anos;");

  }
  void mostrar_carro(){
    print("Marca: $_marca, Modelo: $_modelo, Ano: $_ano");
  }
}

