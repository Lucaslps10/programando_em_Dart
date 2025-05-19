void main() {
    /////////// 1 ///////////
    int idade = 28;
    print("Idade: $idade");

    ////////// 2 ///////////
    double altura = 1.75;
    print("Altura: $altura");

    ////////// 3 //////////
    String animalEstimacao = "Jubileu";
    print("Animal de estimação: $animalEstimacao");

    ///////// 4 //////////
    bool acenderLampada = false;
    print("Lâmpada ligada: $acenderLampada");

    ///////// 5 ///////////
    int a = 10, b = 20;
    var soma = a + b;
    print("$a, $b, Soma: $soma");

    ///////// 6 ////////////
    var resto = a % b;
    print("Resto da divisão entre 'a' e 'b': $resto");

    ///////// 7 ///////////
    double compra = 100.00;
    var compraComDesconto = compra - compra * (10/100);
    print("Compra: $compra \nCompra com desconto de 10%: $compraComDesconto");

    ///////// 8 ///////////
    String celular = "Vivo V50";
    int preco = 2800;
    print("Um celular $celular custa em média $preco;");

    ///////// 9 ////////////
    var nomeCidades = ["Picuí", "Carnaúba", "Nova Palmeira"];
    print("Segunda cidade da lista: " + nomeCidades[1]);

    ///////// 10 ////////////
    var frutas = {
        'Maçã' : 3.0,
        'Banana' : 8.0,
        'Uva' : 10.0,
        'Laranja' : 1.0
    };
    print("Listando as frutas:");
    print(frutas.keys);
    print("Valor da banana: ${frutas['Banana']}");

    ///////// 11 //////////
    var conjunto = <String> {'1', '2', '3', '2'};
 
    var comprimento = conjunto.length;
    print("Valor do conjunto: $conjunto");
    print("Comprimento do conjunto: $comprimento");

    /////////// 12 ////////
    dynamic valor = 20;
    print("Variável dinâmica inteira: $valor");
    valor = "Hello";
    print("Mudando o valor para String: $valor");

    ////////// 13 //////////
    // Usando a idade da questão anterior;
    String validacao_idade = idade < 18 ? "Menor de idade" : "Maior de idade";
    print(validacao_idade);

    ////////// 14 /////////
    String? nome;
    String nomePadrao = "Não informado";
    String nomeCompleto = nome ?? nomePadrao;
    print(nomeCompleto);

    ////////// 15 ////////////
    final pi = 3.14;
    print(pi);
/*
    pi = 4; // Valor que gera um erro;
    print(pi);
*/
}