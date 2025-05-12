import 'exemplos.dart';

void main(){
    print("Olá, Dart!");

    var carro = Carro("", "", 0);
    carro.modelo = "Uno";
    carro.marca = "Fiat";
    carro.ano = 2013;
    carro.mostrar_carro();
    carro.calcular_idade(2025);

}
