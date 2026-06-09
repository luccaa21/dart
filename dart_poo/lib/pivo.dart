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

  // método
  @override
  void treinar(){
    if(nivelRebote + 2 <= 99){
      nivelRebote += 2;
    }
    if(nivelArremesso + 1 <= 99){
      nivelArremesso += 1;
    }
  }

  // getters
  bool get protetorAro => _protetorAro;
  bool get especialistaRebotes => _especialistaRebotes;

  // setters
  set protetorAro(bool protetor) => _protetorAro = protetor;
  set especialistaRebotes(bool especialista) =>
      _especialistaRebotes = especialista;
}
