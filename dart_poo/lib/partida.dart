import 'equipe.dart';
import 'jogador.dart';
import 'dart:math';

class Partida {
  Equipe _mandante;
  Equipe _visitante;
  int _placarMandante = 0;
  int _placarVisitante = 0;
  DateTime _dataPartida;
  bool _finalizada = false;
  String? _destaqueMandante;
  String? _destaqueVisitante;

  Partida(this._mandante, this._visitante, this._dataPartida);

  // métodos
  void simularPartida() {
    if (_finalizada) { // impedir de executar duas vezes a mesma partida
      print('Erro: Esta partida já foi finalizada!');
      return;
    }

    // impede de começar a partida com menos de 5 jogadores
    if (_mandante.jogadores.length != 5 || _visitante.jogadores.length != 5) {
      print('Erro: As duas equipes precisam ter exatamente 5 jogadores.');
      return;
    }

    print('Iniciando ${_mandante.nome} x ${_visitante.nome}:');
    
    // gerador de números aleatórios
    Random gerador = Random();

    // "força" dos times
    double forcaMandante = _mandante.calcularNivel();
    double forcaVisitante = _visitante.calcularNivel();

    // gera a pontuação com um valor básico de 70 + valor randomico até 30 + bônus pela força da equipe
    _placarMandante = 70 + gerador.nextInt(30) + 5 + (forcaMandante / 10).toInt(); // + bônus por jogar em casa
    _placarVisitante = 70 + gerador.nextInt(30) + (forcaVisitante / 10).toInt();

    // se empatar, o mandante ganha
    if (_placarMandante == _placarVisitante) {
      _placarMandante += 2;
    }

    _finalizada = true;
    _processarResultados(gerador); // gerar as estatísticas e atualizar os jogadores e equipes
    exibirPlacarFinal();
  }

  // é privado - só é usado dentro da classe
  void _processarResultados(Random gerador) {
    bool mandanteVenceu = _placarMandante > _placarVisitante;

    // atualizando vitorias e derrotas das equipes
    _mandante.registrarResultado(mandanteVenceu);
    _visitante.registrarResultado(!mandanteVenceu);

    // criando estatisticas ficticias para os jogadores usando a função específica
    String destaqueMandante = _distribuirEstatisticas(_mandante.jogadores, _placarMandante, gerador);
    String destaqueVisitante = _distribuirEstatisticas(_visitante.jogadores, _placarVisitante, gerador);

    _destaqueMandante = destaqueMandante;
    _destaqueVisitante = destaqueVisitante;

  }

  // método para o n° de pontos totais do time ser dividido aleatoriamente entre os jogadores
  String _distribuirEstatisticas(List<Jogador> jogadores, int pontosDoTime, Random gerador) {
    List<int> pontosIndividuais = [0, 0, 0, 0, 0]; // lista para armazenar os pontos de cada 1 dos 5 jogadores
    int pontosRestantes = pontosDoTime;

    // atribui pontos até os pontos feitos pelo time chegarem a 0
    while (pontosRestantes > 0) {
      int indexSorteado = gerador.nextInt(5); // escolhe um jogador aleatório(0 a 4)
      
      // sorteia entre lance livre(1), bandeja(2), arremesso de três(3)
      int cesta = gerador.nextInt(3) + 1; 
      
      // evita que passe do numero restante de pontos para fechar os pontos totais do time
      if (cesta > pontosRestantes) {
        cesta = pontosRestantes;
      }

      // atribui para o índice específico da lista
      pontosIndividuais[indexSorteado] += cesta;
      // diminui dos pontos feitos pelo time
      pontosRestantes -= cesta;
    }

    int melhorJogador = 0;
    String nomeMelhorJogador = '';

    for (int i = 0; i < 5; i++) {
      int pts = pontosIndividuais[i]; // usa a lista para atribuir o valor
      int reb = gerador.nextInt(11);  // rebotes aleatorios até 10
      int ast = gerador.nextInt(11);  // assistências aleatorias até 10

      if(pts + reb + ast > melhorJogador){
        melhorJogador = pts + reb + ast;
        nomeMelhorJogador = jogadores[i].nome;
      }

      if(pts >= 10 && reb >= 10 && ast >= 10){
        print('ALERTA: O jogador ${jogadores[i].nome} anotou um tripo duplo - PTS: $pts REB $reb ASS $ast');
      }
      
      // atribui utilizando o método da classe Estatistica
      jogadores[i].estatisticas.registrarPartida(pts, reb, ast);
    }

    return nomeMelhorJogador;

  }

  void exibirPlacarFinal() {
    if (!_finalizada) { // impedir o usuário de tentar exibir os dados de uma partida que ainda não ocorreu
      print('Erro: Esta partida ainda não ocorreu!');
      return;
    }

    print('--- FIM DE JOGO ---');
    print('Data: ${_dataPartida.day}/${_dataPartida.month}/${_dataPartida.year}');
    print('${_mandante.nome} $_placarMandante x $_placarVisitante ${_visitante.nome}');
    
    if (_placarMandante > _placarVisitante) {
      print('Vencedor: ${_mandante.nome}');
    } else {
      print('Vencedor: ${_visitante.nome}');
    }

    print('Destaque mandante: ${_destaqueMandante}');
    print('Destaque visitante: ${_destaqueVisitante}');

    print('-------------------\n');
  }

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
