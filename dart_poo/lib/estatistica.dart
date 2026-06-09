class Estatistica {
  int _partidasJogadas = 0;
  int _totalPontos = 0;
  int _totalRebotes = 0;
  int _totalAssistencias = 0;

  // não há necessidade de escrever o construtor, é criado automaticamente
  // Estatistica();

  // métodos
  void registrarPartida(int pontosJogo, int rebotesJogo, int assistenciasJogo){
    _partidasJogadas++;
    _totalPontos += pontosJogo;
    _totalRebotes += rebotesJogo;
    _totalAssistencias += assistenciasJogo;
  }

  double pontosPorJogo(){
    if(_partidasJogadas > 0){
      return _totalPontos / _partidasJogadas;
    }
    return 0;
  }

  double rebotesPorJogo(){
    if(_partidasJogadas > 0){
      return _totalRebotes / _partidasJogadas;
    }
    return 0;
  }

  double assistenciasPorJogo(){
    if(_partidasJogadas > 0){
      return _totalAssistencias / _partidasJogadas;
    }
    return 0;
  }

  // getters
  int get partidasJogadas => _partidasJogadas;
  int get totalPontos => _totalPontos;
  int get totalRebotes => _totalRebotes;
  int get totalAssistencias => _totalAssistencias;
}
