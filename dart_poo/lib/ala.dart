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

  // método
  @override
  void treinar(){
    if(nivelPasse + 1 <= 99){
      nivelPasse += 1;
    }
    if(nivelArremesso + 2 <= 99){
      nivelArremesso += 2;
    }
  }

  // getters
  int get explosaoFisica => _explosaoFisica;
  bool get especialistaInfiltracao => _especialistaInfiltracao;

  // setters
  set protetorAro(int novaExplosao) => _explosaoFisica = novaExplosao;
  set especialistaInfiltracao(bool especialista) =>
      _especialistaInfiltracao = especialista;
}
