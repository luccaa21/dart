# Dart

É uma linguagem de programação orientada a objetos desenvolvida pelo Google, otimizada para a criação de interfaces de usuário - principal linguagem utilizada para criar aplicativos móveis, web e desktop através do framework Flutter.

## Características

* **Multiplataforma:** Compila nativamente para iOS, Android, Windows, macOS, Linux e Web.

* **Sound Null Safety:** Recurso que garante que uma variável não pode conter o valor null a menos que o desenvolvedor declare explicitamente que ela pode.
  ↳ impede que ocorra um NullPointerException por falta de verificação, já que o desenvolvedor precisa dar certeza, em tempo de desenvolvimento, que as variáveis recebem seus respectivos valores (ou que há segurança sobre a possibilidade de um valor null).

* **Tudo é um objeto:** Não há tipos primitivos - `int`, `double`.. - tudo herda da classe base `Object`.

* **Modificadores de Acesso:** Não existem modificadores de acesso explícitos - `private`, `public`, `protected` - tudo é público por padrão, e para tornar privado utilizamos “_” no início do nome do atributo ou método.

```dart
class Equipe {
  String _nome;
  String _cidade;
  List<Jogador> _jogadores = [];
  int _vitorias = 0;
  int _derrotas = 0;
```

* **Interfaces Implícitas:** Não há a palavra chave “interface”, em vez disso, toda classe define implicitamente uma interface que contém todos os seus membros de instância - caso o objetivo seja criar um contrato para outra classe, usamos a sintaxe padrão de “implements” utilizando uma classe padrão ou uma abstrata.

* **Código limpo:** O Dart busca eliminar o boilerplate (código repetitivo), comum em linguagens tradicionais de POO, através de diferentes formas, entre elas:
  ↳ **Construtores reduzidos:** uso de “Initializing Formals” para receber o parâmetro e implicitamente atribuí-lo à variável correspondente.
```dart
class Produto { 
  String _nome; 
  double _preco; 

  Produto(String nome, double preco) { 
    this._nome = nome; 
    this._preco = preco; 
  } 
}

class Produto { 
  String _nome; 
  double _preco; 
  
  Produto(this._nome, this._preco); }
```
  ↳ **Getters e Setters simplificados:** substitui os métodos tradicionais, relativamente longos e verbosos, usando as palavras chave get e set, junto com a Arrow Syntax, para realizar um retorno direto em uma única linha e ainda facilitar o uso dos mesmos.
```dart
  class Produto {
  String _nome;
  double _preco;

  // getter reduzido
  String get nome => _nome;

  // setter reduzido
  set preco(double novoPreco) => _preco = novoPreco;
}
```

# Software - Simulador de Basquete

## Resumo
O projeto desenvolvido é um **Simulador de Basquete baseado em terminal (CLI)**, inteiramente em **Dart**. O sistema modela o ecossistema de uma liga de basquete, gerenciando desde a criação de jogadores e equipes, contratações e a simulação matemática de partidas completas, com registro do desempenho individual de cada jogador em quadra e atualização da classificação de cada equipe.

## Problema a ser Resolvido
Uma liga de basquete possui alto nível de interdependência de dados, portanto, o programa utilizou os 4 conceitos de relacionamento da programação orientada a objetos para gerenciar as entidades de forma segura, além de aplicar encapsulamento para todas as propriedades e regras de negócio para garantir a integridade dos dados.

Relacionamentos:
Herança: superclasse Jogador e subclasses Armador, Ala e Pivo
Composição: classe Jogador composta por atributo do tipo Estatistica
Agregação: classe Equipe possui uma lista de Jogadores
Associação: classe Partida utiliza objetos do tipo Equipe para a simulação

## Principais Funcionalidades

### 1. Gerenciamento de Elencos
* **Contratação e Dispensa:** As equipes são inicializadas vazias, e então podem contratar ou dispensar atletas, com validações específicas:
contratação: se o atleta é um agente livre e se a equipe não atingiu o número máximo de jogadores(5)
dispensa: se o jogador realmente pertence ao time

### 2. Controle Individual de cada Jogador
* **Variedade de Posições:** A classe Jogador é abstrata, e a partir dela são implementadas as classes específicas de cada posição - Armador, Ala e Pivo - o que permite que diferentes posições resultem em atributos distintos e em sobrescrita do método treinar( ).
* **Classificação do Jogador:** Cada objeto da classe Jogador possui atributos que determinam sua habilidade em arremessar, pegar rebotes e dar assistências. Eles determinam a “força” desse jogador, o que contribui para a “força geral” da equipe. Além disso, esses valores estão limitados a inteiros entre 1 e 99.

### 3. Simulação de Partidas
* **Uso de valores aleatórios:** Uso da biblioteca `dart:math` para gerar placares baseados na “força” de cada equipe, somado a um valor aleatório e um bônus de “fator casa” para o time mandante.

### 4. Estatísticas Fictícias
* **Distribuição exata de pontos:** O sistema garante que a soma dos pontos individuais dos 5 jogadores seja igual ao placar final gerado para a equipe, usando uma função que distribui os pontos totais de forma aleatória aos 5 jogadores.
* **Atribuição aos jogadores:** Cada partida resulta no incremento da quantidade de pontos, rebotes e assistências de cada jogador, o que permite o cálculo da média de cada um no final de uma sequência de jogos.
* **Destaques individuais:** Toda partida define um jogador destaque para o time mandante e outro para o visitante, baseado na soma total de pontos, rebotes e assistências de cada jogador. Além disso, há a possibilidade de um alerta de “Triplo-Duplo” - quando um jogador atinge dois dígitos em cada uma das estatísticas na mesma partida.
