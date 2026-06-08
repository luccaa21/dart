import 'jogador.dart';

class Equipe {
  String _nome;
  String _cidade;
  List<Jogador> _jogadores = [];
  int _vitorias = 0;
  int _derrotas = 0;

  Equipe(this._nome, this._cidade);
}
