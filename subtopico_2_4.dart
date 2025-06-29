void main(List<String> args) {
  print(calcularAreaRetangulo(10, 5));
  apresentarPessoa(nome: "Lucas");
  apresentarPessoa(nome: "Jales", idade: 15);
  enviarEmail(destinatario: "lucas.silva.30@academico.ifpb.edu.br");
  print("Soma de todos os elementos da lista: ${somarLista([2, 4, 6, 8])}");
  saudacao("Jales");
}

/////////// 25 ///////////
int calcularAreaRetangulo(int base, int altura) {
  return base * altura;
}

////////// 26 ////////////
void apresentarPessoa({required String nome, int? idade}) {
  print("Nome: $nome");
  if (idade != null) {
    print("Idade: $idade");
  }
}

/////////// 27 /////////////////
void enviarEmail({
  required String destinatario,
  String assunto = "Sem assunto",
  String corpo = "Mensagem vazia",
}) {
  print("E-mail enviado para: $destinatario");
  print("Assunto: $assunto");
  print("Corpo da mensagem: $corpo");
}

///////////// 28 /////////////
int somarLista(List<int> inteiros) {
  int total = 0;
  for (var i in inteiros) {
    total += i;
  }
  return total;
}

//////////// 29 ////////////////////
var saudacao = (String nome) {
  print("Olá $nome, prazer em te conhecer!");
};
