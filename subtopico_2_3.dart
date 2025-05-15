// Biblioteca que contém a classe "Stdin", Que permite que o usuário leia dados de entrada padrão;
import 'dart:io';

void main(){
  print("Qual a sua idade?");
   // O método readLineSync() é um dos métodos usados ​​para receber a entrada do usuário.
  int? idade = int.parse(stdin.readLineSync()!); 
  if(idade >= 18){
    print("Sua idade é: $idade, você é maior de idade!");
  }
  else{
    print("Menor de idade.");
  }
}