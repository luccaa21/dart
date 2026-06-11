import 'equipe.dart';
import 'estatistica.dart';

abstract class Jogador {
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
  ){
    if (_nivelArremesso <= 0 || _nivelArremesso >= 100) {
      throw ArgumentError('O nível de arremesso deve ser maior que 0 e menor que 100.');
    }
    
    if (_nivelRebote <= 0 || _nivelRebote >= 100) {
      throw ArgumentError('O nível de rebote deve ser maior que 0 e menor que 100.');
    }
    
    if (_nivelPasse <= 0 || _nivelPasse >= 100) {
      throw ArgumentError('O nível de passe deve ser maior que 0 e menor que 100.');
    }
  }

  // métodos
  void exibirPerfil() {
    String nomeDoTime = _equipe?.nome ?? 'Free Agent'; // se não tiver equipe(é null) = Free Agent
    
    print('--- Perfil do Jogador ---');
    print('Nome: $_nome | #$_numCamisa');
    // 'runtimeType' descobre se o jogador em questão é armador, ala ou pivô em tempo de execução
    print('Posição: $runtimeType | Altura: $_altura m | Idade: $_idade anos');
    print('Equipe atual: $nomeDoTime');
    print('Nível Geral: ${calcularNivel().toStringAsFixed(1)}');
    print('-------------------------');
  }

  double calcularNivel() {
    double media = (_nivelArremesso + _nivelRebote + _nivelPasse) / 3;
    return double.parse(media.toStringAsFixed(2));
  }

  void treinar();

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
  set equipe(Equipe? novaEquipe) => _equipe = novaEquipe;
  set nivelArremesso(int novoNivel) => _nivelArremesso = novoNivel;
  set nivelPasse(int novoNivel) => _nivelPasse = novoNivel;
  set nivelRebote(int novoNivel) => _nivelRebote = novoNivel;
}
