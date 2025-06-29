import 'dart:collection';

void main() {
  /////////// 30 //////////////
  List<int> numeros = [10, 20, 30];
  print(numeros);
  numeros.add(40);
  print(numeros);
  print("Indice dois: ${numeros[2]}");
  ///////////// 31 //////////////
  var frutas = ['maçã', 'banana', 'laranja', 'banana'];
  frutas.removeWhere((fruta) => fruta == 'banana');
  print(frutas);
  ///////////// 32 ///////////////
  List<String> lista_strings = numeros.map((n) => 'Número $n').toList();
  print(lista_strings);
  //////////// 33 ///////////////
  var letras = {'a', 'b', 'c'};
  letras.add('a');
  print(letras);
  /////////// 34 //////////////
  Set<int> set1 = {1, 2, 3};
  var set2 = <int>{3, 4, 5};
  var uniao = set1.union(set2);
  print("União: $uniao");
  ////////// 35 //////////////
  var intersecao = set1.intersection(set2);
  print("Intersecao: $intersecao");
  /////////// 36 ////////////////
  List<String> nomes = ['Lucas', 'Kaio', 'Eduardo', 'Lucas', 'Lucas', 'Kaio'];
  Set<String> conjunto = Set.from(nomes);
  print(conjunto);
  /////////// 37 ////////////////
  var pessoa = {'Nome': 'Ana', 'Idade': 25};
  print("Mapa: $pessoa");
  pessoa.addAll({'Cidade': 'São Paulo'});
  print(pessoa);
  pessoa['Idade'] = 26;
  print(pessoa);
  //////////// 38 ///////////////
  var produtos = {'celular': 1500, 'notebook': 3000};
  print(produtos.containsKey('tablet'));
  produtos.addAll({'tablet': 1000});
  print(produtos);
  //////////// 39 //////////////
  Map<String, int> map1 = {'a': 1, 'b': 2};
  Map<String, int> map2 = {'c': 3};
  var combinado = {...map1, ...map2};
  print(combinado);
  /////////// 40 ///////////////
  Queue<String> fila = new Queue<String>();
  fila.addLast('Primeiro');
  fila.addLast('Segundo');
  fila.addLast('Terceiro');
  fila.addLast('Quarto');
  print("Fila: $fila");
  print("Removendo: ${fila.removeFirst()}");
  print("Fila sem o primeiro elemento: $fila");
  ////////// 41 ///////////////
  Queue<int> fila_numeros = Queue<int>.from([1, 2, 3, 4]);
  print("Fila de inteiros: $fila_numeros");
  fila_numeros.addFirst(0);
  print("Fila de inteiros acrescentando o zero no início: $fila_numeros");
  fila_numeros.removeLast();
  print("Removendo o útimo elemento da lista: $fila_numeros");
  ///////////// 42 ////////////////
  List<int> fila_para_lista = List.from(fila_numeros);
  fila_para_lista.remove(fila_para_lista[1]);
  print(
    "Tranformando fila em lista e removendo o segundo elemento: $fila_para_lista",
  );
  ////////////// 43 ////////////////////
  final lista_de_nos = LinkedList<Node>();
  // Adicionando nós
  lista_de_nos.addAll([Node(10), Node(20), Node(30)]);

  /////////////// 44 ///////////////////////
  // Encontrar e remover o nó com valor 20
  lista_de_nos.firstWhere((node) => node.valor == 20).unlink();

  // Imprimir valores restantes
  print("Valores restantes na lista:");
  lista_de_nos.forEach((node) => print(node.valor));
  print(lista_de_nos);

  ////////////// 45 ///////////////////////////
  print("Valores multiplicados por dois:");
  for (var node in lista_de_nos) {
    print(node.valor * 2);
  }
}

/////////////// CLASSE NODE //////////////////
final class Node extends LinkedListEntry<Node> {
  final int valor;
  Node(this.valor);

  @override
  String toString() => 'Node(valor: $valor)';
}
