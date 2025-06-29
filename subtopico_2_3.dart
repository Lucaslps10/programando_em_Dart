// Biblioteca que contém a classe "Stdin", Que permite que o usuário leia dados de entrada padrão;

import 'dart:io';

void main() {
  //////////// 16 /////////////
  print("Qual a sua idade?");
  // O método readLineSync() é um dos métodos usados ​​para receber a entrada do usuário.
  int? idade = int.parse(stdin.readLineSync()!);
  if (idade >= 18) {
    print("Sua idade é: $idade, você é maior de idade!");
  } else {
    print("Menor de idade.");
  }

  /////////// 17 /////////////
  double nota = 6;

  if (nota >= 7) {
    print("Aprovado");
  } else if (nota >= 5 && nota <= 6.9) {
    print("Recuperação");
  } else {
    print("Reprovado");
  }

  /////////// 18 ///////////
  print("Digite um número inteiro:");
  int? numero = int.parse(stdin.readLineSync()!);
  String exibir = numero % 2 == 0 ? "Par" : "Ímpar";
  print(exibir);

  /////////// 19 //////////////
  int dias_da_semana = 1;
  switch (dias_da_semana) {
    case 1:
      {
        print("Domingo");
        break;
      }
    case 2:
      {
        print("Segunda");
        break;
      }
    case 3:
      {
        print("Terça");
        break;
      }
    case 4:
      {
        print("Quarta");
        break;
      }
    case 5:
      {
        print("Quinta");
        break;
      }
    case 6:
      {
        print("Sexta");
        break;
      }
    case 7:
      {
        print("Sábado");
        break;
      }

    default:
      {
        print("Não é um dia da semana!");
      }
      break;
  }
  ////////////// 20 //////////////
  int cont = 0;
  var lista_de_inteiros = [];
  while (cont < 3) {
    print("Digite um número inteiro:");
    int? numero = int.parse(stdin.readLineSync()!);
    lista_de_inteiros.add(numero);

    cont += 1;
  }
  if (lista_de_inteiros[0] > lista_de_inteiros[1] &&
      lista_de_inteiros[0] > lista_de_inteiros[2]) {
    print("${lista_de_inteiros[0]} é o maior!");
  } else if (lista_de_inteiros[1] > lista_de_inteiros[0] &&
      lista_de_inteiros[1] > lista_de_inteiros[2]) {
    print("${lista_de_inteiros[1]} é o maior!");
  } else {
    print("${lista_de_inteiros[2]} é o maior!");
  }

  for (var i = 10; i >= 1; i--) {
    print(i);
  }
  ////////////// 21 ///////////////
  int soma = 0;
  int num = 1;
  while (num <= 100) {
    if (num % 2 == 0) {
      print(num);
      soma += num;
    }
    num++;
  }
  print("Soma dos números pares: $soma");

  ///////////// 22 /////////////
  print("Digite um número:");
  int? valor = int.parse(stdin.readLineSync()!);
  for (var i = 0; i <= 10; i++) {
    var soma = valor + i;
    var sub = valor - i;
    var mult = valor * i;
    var div = valor / i;
    print(
      "Soma: $valor + $i = $soma | Subtração: $valor - $i = $sub, | Multiplicação: $valor * $i = $mult | Divisão: $valor / $i = $div",
    );
  }
  ////////////// 23 //////////////////
  int contador = 0;
  while (true) {
    print("Digite um número:");
    int? num_digitado = int.parse(stdin.readLineSync()!);
    if (num_digitado < 0) {
      print("Você digitou $contador vezes.");
      break;
    }
    contador += 1;

    contador++;
  }
  ////////// 24 ////////////////
  List<String> lista_nomes = [
    "Lucas",
    "Marcos Paulo",
    "Jefferson",
    "Mestre Kaio",
    "Jales",
  ];
  for (var nome in lista_nomes) {
    print(nome.toUpperCase());
  }
}
