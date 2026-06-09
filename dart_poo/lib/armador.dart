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

  // método
  @override
  void treinar(){
    if(nivelPasse + 2 <= 99){
      nivelPasse += 2;
    }
    if(nivelArremesso + 1 <= 99){
      nivelArremesso += 1;
    }
  }

  // getters
  int get controleBola => _controleBola;
  bool get especialistaPerimetro => _especialistaPerimetro;

  // setters
  set controleBola(int novoControle) => _controleBola = novoControle;
  set especialistaPerimetro(bool especialista) =>
      _especialistaPerimetro = especialista;
}
