import 'equipe.dart';

class Partida {
  Equipe _mandante;
  Equipe _visitante;
  int _placarMandante = 0;
  int _placarVisitante = 0;
  DateTime _dataPartida;
  bool _finalizada = false;

  Partida(this._mandante, this._visitante, this._dataPartida);
}
