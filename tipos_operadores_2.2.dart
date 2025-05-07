void main() {
    int idade = 28;
    print("Idade: $idade");

    double altura = 1.75;
    print("Altura: $altura");

    String animalEstimacao = "Jubileu";
    print("Animal de estimação: $animalEstimacao");

    bool acenderLampada = false;
    print("Lâmpada ligada: $acenderLampada");

    int a = 10, b = 20;
    var soma = a + b;
    print("$a, $b, Soma: $soma");

    var resto = a % b;
    print("Resto da divisão entre 'a' e 'b': $resto");

    double compra = 100.00;
    var compraComDesconto = compra - compra * (10/100);
    print("Compra: $compra \nCompra com desconto de 10%: $compraComDesconto");

    String celular = "Vivo V50";
    int preco = 2800;
    print("Um celular $celular custa em média $preco;");

    var nomeCidades = ["Picuí", "Carnaúba", "Nova Palmeira"];
    print("Segunda cidade da lista: " + nomeCidades[1]);

    var frutas = {
        'Maçã' : 3.0,
        'Banana' : 8.0,
        'Uva' : 10.0,
        'Laranja' : 1.0
    };
    print("Listando as frutas:");
    print(frutas.keys);
    print("Valor da banana: ${frutas['Banana']}");

    var conjunto = <String> {'1', '2', '3', '2'};
 
    var comprimento = conjunto.length;
    print("Valor do conjunto: $conjunto");
    print("Comprimento do conjunto: $comprimento");

    dynamic valor = 20;
    print("Variável dinâmica inteira: $valor");
    valor = "Hello";
    print("Mudando o valor para String: $valor");

    // Usando a idade da questão anterior;
    String validacao_idade;
    validacao_idade = idade < 18 ? "Menor de idade" : "Maior de idade";
    print(validacao_idade);

    String variabel;
    
    
}