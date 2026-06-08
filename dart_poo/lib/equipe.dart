import 'jogador.dart';

class Equipe {
  String _nome;
  String _cidade;
  List<Jogador> _jogadores = [];
  int _vitorias = 0;
  int _derrotas = 0;

  // construtor
  Equipe(this._nome, this._cidade);

  // getters
  String get nome => _nome;
  String get cidade => _cidade;
  int get vitorias => _vitorias;
  int get derrotas => _derrotas;

  // setters
  set nome(String novoNome) => _nome = novoNome;
  set cidade(String novaCidade) => _cidade = novaCidade;
}
