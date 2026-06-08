import 'jogador.dart';

class Ala extends Jogador {
  int _explosaoFisica;
  bool _especialistaInfiltracao;

  Ala(
    super.nome,
    super.numCamisa,
    super.altura,
    super.idade,
    super.nivelArremesso,
    super.nivelRebote,
    super.nivelPasse,
    this._explosaoFisica,
    this._especialistaInfiltracao,
  );
}
