import 'dart:ffi';

void main() {
  var livro = Livro('Dom Casmurro', 'Machado de Assis', 1899);
  livro.exibirDetalhes();

  Contador contador = Contador();
  print('Valor inicial do contador: ${contador.valor}');
  contador.incrementar();
  print('Contador: ${contador.valor}');
  contador.incrementar();
  print('Contador: ${contador.valor}');
  contador.resetar();
  print('Contador: ${contador.valor}');

  var aluno1 = Aluno('Lucas Silva', '202312040004');
  var aluno2 = Aluno.semMatricula('Marcos Paulo');

  print('Aluno 1: ${aluno1.nome}, Matrícula: ${aluno1.matricula}');
  print('Aluno 2: ${aluno2.nome}, Matrícula: ${aluno2.matricula}');

  var produto1 = Produto(nome: 'Celular', preco: 3500.00);
  var produto2 = Produto(nome: 'TV Sansung');

  print('Produto 1: ${produto1.nome}, Preço: R\$ ${produto1.preco}');
  print('Produto 2: ${produto2.nome}, Preço: R\$ ${produto2.preco}');

  var carro = Carro("Nissan", 180.0, 4);
  print(carro.quantidadePortas);

  var gato = Gato();
  gato.emitirSom();

  Forma quadrado = Quadrado(5);
  Forma circulo = Circulo(2);

  print('Área do quadrado: ${quadrado.calcularArea()}');
  print('Área do círculo: ${circulo.calcularArea()}');

  var email = Email();
  var sms = SMS();

  email.enviar();
  sms.enviar();

  var conta = ContaBancaria();
  conta.depositar(500);
  print("Saldo atual: R\$ ${conta.saldo.toStringAsFixed(2)}");

  //toStringAsFixed converte um número para String com exatamente duas casa descimais;
  print(conta.sacar(400));
  print("Saldo atual: R\$ ${conta.saldo.toStringAsFixed(2)}");
  print(conta.sacar(200));

  Termometro termometro = Termometro();
  termometro.ajustarTemperatura(10);

  var ret = Retangulo();
  ret.altura = 10;
  ret.largura = 20;
  print("Altura: ${ret.altura}, Largura: ${ret.largura}");
  ret.altura = -10;

  var usuario = Usuario();

  usuario.email = 'lucas@example.com';
  print(usuario.email);

  usuario.email = 'lucas.example.com';
  print(usuario.email);

  Usuario autenticacaoUsuario = Usuario();
  print(autenticacaoUsuario.autenticar("1234"));
  print(autenticacaoUsuario.autenticar("SenhaErrada"));

  var soma = Soma();
  var subtracao = Subtracao();
  print("Soma: ${soma.calcular(100, 78)}");
  print("Subtração: ${subtracao.calcular(100, 78)}");

  Dispositivo dispositivo = Celular();
  dispositivo.ligar();

  var areaTriangulo = Triangulo();
  var areaRetangulo = retangulo();
  print("Area do triângulo: ${areaTriangulo.calcularArea(15, 3)}");
  print("Area do retâgulo: ${areaRetangulo.calcularArea(12, 2)}");
}

////// Classes /////////

////////////// 46 ///////////////////////////
class Livro {
  String titulo;
  String autor;
  int anoPublicacao;

  Livro(this.titulo, this.autor, this.anoPublicacao);

  void exibirDetalhes() {
    print("Titulo: $titulo, Autor: $autor, Ano de publicação: $anoPublicacao");
  }
}

////////////// 47 ///////////////////////////
class Contador {
  int _valor = 0;

  int get valor => _valor; // Getter público para acessar o valor;

  void incrementar() {
    print("Incrementando...");
    _valor += 1;
  }

  void resetar() {
    print("Resetando...");
    _valor = 0;
  }
}

////////////// 48 ///////////////////////////
class Aluno {
  String nome;
  String matricula;

  Aluno(this.nome, this.matricula);
  Aluno.semMatricula(this.nome) : matricula = 'Não informada';
}

////////////// 49 ///////////////////////////
class Produto {
  String nome;
  double preco;

  Produto({required this.nome, this.preco = 0.0});
}

////////////// 50 ///////////////////////////
class Veiculo {
  String marca;
  double velocidadeMaxima;

  Veiculo(this.marca, this.velocidadeMaxima);
}

class Carro extends Veiculo {
  int quantidadePortas;
  Carro(String marca, double velocidadeMaxima, this.quantidadePortas)
    : super(marca, velocidadeMaxima);
}

////////////// 51 ///////////////////////////
class Animal {
  void emitirSom() {
    print("Som do animal!");
  }
}

class Gato extends Animal {
  @override
  void emitirSom() {
    super.emitirSom();
    print("Miau!");
  }
}

////////////// 52 ///////////////////////////
class Forma {
  double calcularArea() {
    return 0.0;
  }
}

class Quadrado extends Forma {
  double lado;

  Quadrado(this.lado);

  @override
  double calcularArea() {
    return lado * lado;
  }
}

class Circulo extends Forma {
  double raio;
  static const double pi = 3.14;

  Circulo(this.raio);

  @override
  double calcularArea() {
    return pi * raio * raio;
  }
}

////////////// 53 ///////////////////////////
class Notificacao {
  void enviar() {
    print("Enviando notificação...");
  }
}

class Email extends Notificacao {
  @override
  void enviar() {
    super.enviar();
    print("E-mail enviado!");
  }
}

class SMS extends Notificacao {
  @override
  void enviar() {
    super.enviar();
    print("SMS enviado!");
  }
}

////////////// 54 ///////////////////////////
class ContaBancaria {
  double _saldo = 0.0;

  void depositar(double valor) {
    if (valor > 0) {
      _saldo += valor;
    } else {
      print("O valor do depósito deve ser positivo.");
    }
  }

  bool sacar(double valor) {
    if (_saldo >= valor) {
      _saldo -= valor;
      return true;
    }
    print("Saldo insuficiente");
    return false;
  }

  double get saldo => _saldo;
}

////////////// 55 ///////////////////////////
class Termometro {
  double _temperaturaC = 0;

  void ajustarTemperatura(double novaTemperatura) {
    if (novaTemperatura >= -50 && novaTemperatura <= 100) {
      _temperaturaC = novaTemperatura;
      print("Nova temperatura: $_temperaturaC graus celcius.");
    } else {
      print("Valor deve estar entre -50 e 100.");
    }
  }

  double get temperaturaC => _temperaturaC;
}

////////////// 56 ///////////////////////////
class Retangulo {
  double _altura = 0;
  double _largura = 0;

  double get altura => _altura;
  double get largura => _largura;

  set altura(double valor) {
    if (valor > 0) {
      _altura = valor;
    } else {
      print("Valor não pode ser negativo.");
    }
  }

  set largura(double valor) {
    if (valor > 0) {
      _largura = valor;
    } else {
      print("Valor não pode ser negativo.");
    }
  }
}

////////////// 57 ///////////////////////////
class Usuario implements Autenticavel {
  String _email = '';
  String senha = '1234';

  String get email => _email;

  set email(String novoEmail) {
    if (novoEmail.contains('@')) {
      _email = novoEmail;
    } else {
      print('Email inválido. Deve conter "@"');
    }
  }

  @override
  bool autenticar(String autenticarSenha) {
    return autenticarSenha == senha;
  }
}

////////////// 58 ///////////////////////////
abstract class Autenticavel {
  bool autenticar(String autenticarSenha);
}

////////////// 59 ///////////////////////////
abstract class Calculavel {
  double calcular(double a, double b);
}

class Soma implements Calculavel {
  @override
  double calcular(double a, double b) {
    return a + b;
  }
}

class Subtracao implements Calculavel {
  @override
  double calcular(double a, double b) {
    return a - b;
  }
}

////////////// 60 ///////////////////////////
abstract class Dispositivo {
  void ligar();
}

class Celular implements Dispositivo {
  @override
  void ligar() {
    print("Celular ligado!");
  }
}

////////////// 61 ///////////////////////////
abstract class FormaGeometrica {
  double calcularArea(double base, double altura);
}

class Triangulo implements FormaGeometrica {
  @override
  double calcularArea(double base, double altura) {
    return (base * altura) / 2;
  }
}

class retangulo implements FormaGeometrica {
  @override
  double calcularArea(double base, double altura) {
    return base * altura;
  }
}
