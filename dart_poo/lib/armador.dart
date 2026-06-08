import 'jogador.dart';

class Armador extends Jogador {
  int _controleBola;
  bool _especialistaPerimetro;

  Armador(
    super.nome,
    super.numCamisa,
    super.altura,
    super.idade,
    super.nivelArremesso,
    super.nivelRebote,
    super.nivelPasse,
    this._controleBola,
    this._especialistaPerimetro,
  );
}
