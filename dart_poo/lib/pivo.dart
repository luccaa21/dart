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
}
