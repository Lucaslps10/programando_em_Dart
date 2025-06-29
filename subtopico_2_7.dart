void main() {
  ////////////// 62 ///////////////////////////
  int a = 10;
  int b = 0;

  if (b != 0) {
    print(a ~/ b);
  } else {
    print("Erro: Não é permitido divisão por zero.");
  }

  ////////////// 63 ///////////////////////////
  String texto = "abc";
  int? numero = int.tryParse(texto);

  if (numero != null) {
    print("Número convertido: $numero");
  } else {
    print("Erro: O texto não pôde ser convertido para inteiro.");
  }

  ////////////// 64 ///////////////////////////
  List lista = [1, 2, 3];

  try {
    print(lista[5]);
  } catch (e) {
    print("Erro: Índice fora do intervalo da lista.");
  }

  ////////////// 65 ///////////////////////////
  String email = "usuario.example.com";

  try {
    if (!email.contains("@")) {
      throw "Erro: o e-mail deve conter o caractere '@'.";
    }
    print("E-mail válido: $email");
  } catch (e) {
    print("Erro: $e");
  }

  processarEntrada("1");
  processarEntrada("5");
  processarEntrada("abc");
}

////////////// 66 ///////////////////////////
void processarEntrada(String entrada) {
  List lista = [10, 20, 30];

  try {
    int numero = int.parse(entrada); // pode lançar erro de conversão

    if (numero < 0 || numero >= lista.length) {
      print("Erro: Índice fora do intervalo da lista.");
    } else {
      print("Valor encontrado: ${lista[numero]}");
    }
  } catch (e) {
    print("Erro: Entrada inválida. Digite um número inteiro e positivo.");
  }
}
