// Biblioteca que contém a classe "Stdin", Que permite que o usuário leia dados de entrada padrão;
import 'dart:io';

void main(){
  //////////// 16 /////////////
  print("Qual a sua idade?");
   // O método readLineSync() é um dos métodos usados ​​para receber a entrada do usuário.
  int? idade = int.parse(stdin.readLineSync()!); 
  if(idade >= 18){
    print("Sua idade é: $idade, você é maior de idade!");
  }
  else{
    print("Menor de idade.");
  }

  /////////// 17 /////////////
  double nota = 6;
  
  if(nota >= 7){
    print("Aprovado");
  } else if(nota >= 5 && nota <= 6.9){
    print("Recuperação");
  } else{
    print("Reprovado");
  }

  /////////// 18 ///////////
  print("Digite um número inteiro:");
  int? numero = int.parse(stdin.readLineSync()!); 
  String exibir = numero % 2 == 0  ? "Par" : "Ímpar";
  print(exibir);

  /////////// 19 //////////////
  int dias_da_semana = 1;
  switch (dias_da_semana) {
    case 1: {
      print("Domingo");
      break;
    }
    case 2: {
      print("Segunda");
      break;
    }
    case 3: {
      print("Terça");
      break;
    }
    case 4: {
      print("Quarta");
      break;
    }
    case 5: {
      print("Quinta");
      break;
    }
    case 6: {
      print("Sexta");
      break;
    }
    case 7: {
      print("Sábado");
      break;
    }
   
    default: {
      print("Esses são os dias da semana!");
    }
    break;
      
  }
  
}