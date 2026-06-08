import 'equipe.dart';

class Partida {
  Equipe _mandante;
  Equipe _visitante;
  int _placarMandante = 0;
  int _placarVisitante = 0;
  DateTime _dataPartida;
  bool _finalizada = false;

  Partida(this._mandante, this._visitante, this._dataPartida);

  // getters
  Equipe get mandante => _mandante;
  Equipe get visitante => _visitante;
  int get placarMandante => _placarMandante;
  int get placarVisitante => _placarVisitante;
  DateTime get dataPartida => _dataPartida;
  bool get finalizada => _finalizada;

  // setters
  set mandante(Equipe novoMandante) => _mandante = novoMandante;
  set visitante(Equipe novoVisitante) => _visitante = novoVisitante;
  set dataPartida(DateTime novaData) => _dataPartida = novaData;
}
