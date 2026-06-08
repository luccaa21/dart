import 'equipe.dart';
import 'estatistica.dart';

class Jogador {
  String _nome;
  int _numCamisa;
  double _altura;
  int _idade;
  Equipe? _equipe;
  int _nivelArremesso;
  int _nivelRebote;
  int _nivelPasse;
  Estatistica _estatisticas = Estatistica();

  Jogador(
    this._nome,
    this._numCamisa,
    this._altura,
    this._idade,
    this._nivelArremesso,
    this._nivelRebote,
    this._nivelPasse,
  );
}
