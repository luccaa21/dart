import 'jogador.dart';

class Equipe {
  String _nome;
  String _cidade;
  List<Jogador> _jogadores = [];
  int _vitorias = 0;
  int _derrotas = 0;

  Equipe(this._nome, this._cidade);

  // métodos
  void contratarJogador(Jogador j){
    if (_jogadores.length >= 5) { // não permite que a equipe tenha + que 5 jogadores
      print('Erro: Não foi possível contratar ${j.nome}. A equipe $nome já atingiu o limite máximo de 5 jogadores.');
      return;
    }

    if(j.equipe == null) { // só permite contratar um jogador sem equipe
      j.equipe = this;
      _jogadores.add(j);
      print('O jogador ${j.nome} foi contratado para o $_nome');
    } else{
      print('O jogador ${j.nome} já possui uma equipe, portanto, não pode ser contratado.');
    }
  }

  void dispensarJogador(Jogador j){
    bool foiRemovido = _jogadores.remove(j);

    if (foiRemovido) {
      j.equipe = null;
      print('O jogador ${j.nome} foi dispensado.');
    } else{
      print('O jogador ${j.nome} não pertence ao seu time.');
    }
  }

  double calcularNivel(){
    if (_jogadores.isEmpty) return 0.0;

    double nivelTotal = 0;
    for(Jogador j in _jogadores){
      nivelTotal += j.calcularNivel();
    }
    return nivelTotal / _jogadores.length;
  }

  void registrarResultado(bool vitoria){
    if(vitoria){
      _vitorias++;
    } else {
      _derrotas++;
    }
  }

  void exibirEquipe(){
    print('--- Equipe ---');
    print('Nome: $_nome | Cidade: $_cidade');
    print('Classificação: $_vitorias/$_derrotas');
    print('Nível Geral: ${calcularNivel().toStringAsFixed(1)}');
    print('Jogadores:');
    for(Jogador j in _jogadores){
      print('${j.nome} #${j.numCamisa} (${j.runtimeType})');
    }
    print('-------------------------');
  }

  // getters
  String get nome => _nome;
  String get cidade => _cidade;
  int get vitorias => _vitorias;
  int get derrotas => _derrotas;
  List<Jogador> get jogadores => _jogadores;

  // setters
  set nome(String novoNome) => _nome = novoNome;
  set cidade(String novaCidade) => _cidade = novaCidade;
}
