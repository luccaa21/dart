import 'jogador.dart';

class Pivo extends Jogador {
  bool _protetorAro;
  bool _especialistaRebotes;

  Pivo(
    super.nome,
    super.numCamisa,
    super.altura,
    super.idade,
    super.nivelArremesso,
    super.nivelRebote,
    super.nivelPasse,
    this._protetorAro,
    this._especialistaRebotes,
  );

  // getters
  bool get protetorAro => _protetorAro;
  bool get especialistaRebotes => _especialistaRebotes;

  // setters
  set protetorAro(bool protetor) => _protetorAro = protetor;
  set especialistaRebotes(bool especialista) =>
      _especialistaRebotes = especialista;
}
