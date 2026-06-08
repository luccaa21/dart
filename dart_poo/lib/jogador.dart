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

  // getters
  String get nome => _nome;
  int get numCamisa => _numCamisa;
  double get altura => _altura;
  int get idade => _idade;
  Equipe? get equipe => _equipe;
  int get nivelArremesso => _nivelArremesso;
  int get nivelRebote => _nivelRebote;
  int get nivelPasse => _nivelPasse;
  Estatistica get estatisticas => _estatisticas;

  // setters
  set nome(String novoNome) => _nome = novoNome;
  set numCamisa(int novoNumero) => _numCamisa = novoNumero;
  set altura(double novaAltura) => _altura = novaAltura;
  set idade(int novaIdade) => _idade = novaIdade;
}
