import 'package:dart_poo/ala.dart';
import 'package:dart_poo/armador.dart';
import 'package:dart_poo/equipe.dart';
import 'package:dart_poo/partida.dart';
import 'package:dart_poo/pivo.dart';

void main(List<String> arguments) {
  
  Equipe spurs = Equipe('Spurs', 'San Antonio');

  Armador castle = Armador('Stephon Castle', 5, 2.01, 21, 83, 85, 89, 92, false);
  Armador harper = Armador('Dylan Harper', 2, 1.98, 20, 85, 82, 91, 94, false);
  Ala sochan = Ala('Jeremy Sochan', 20, 2.07, 23, 77, 88, 80, 83, false);
  Ala vassell = Ala('Devin Vassell', 24, 1.98, 25, 90, 84, 80, 84, true);
  Pivo wembanyama = Pivo('Victor Wembanyama', 1, 2.25, 22, 87, 94, 83, true, true);

  // forçar erro - atributos do jogador não podem ser <= 0 nem >= 100
  // Armador fox = Armador('DeAron Fox', 4, 1.98, 28, 0, 79, 150, 90, false);

  spurs.contratarJogador(castle);
  spurs.contratarJogador(harper);
  spurs.contratarJogador(sochan);
  spurs.contratarJogador(vassell);
  spurs.contratarJogador(wembanyama);

  sochan.exibirPerfil();

  spurs.dispensarJogador(sochan);

  sochan.exibirPerfil();

  Ala champagnie = Ala('Julian Champagnie', 30, 2.04, 24, 91, 74, 78, 77, false);
  spurs.contratarJogador(champagnie);

  Equipe knicks = Equipe('Knicks', 'Nova York');

  Armador brunson = Armador('Jalen Brunson', 11, 1.88, 29, 90, 68, 88, 93, true);
  Armador bridges = Armador('Mikal Bridges', 25, 2.01, 29, 87, 88, 80, 79, false);
  Ala anunoby = Ala('OG Anunoby', 8, 2.04, 28, 88, 86, 78, 90, true);
  Ala hart = Ala('Josh Hart', 3, 1.98, 31, 80, 89, 82, 86, false);
  Pivo kat = Pivo('Karl-Anthony Towns', 32, 2.13, 30, 89, 86, 78, false, false);

  // forçando erro - não pode contratar jogador que já tem time
  knicks.contratarJogador(wembanyama);

  // forçando erro, não pode dispensar jogador que não é do time
  knicks.dispensarJogador(wembanyama);

  knicks.contratarJogador(brunson);
  knicks.contratarJogador(bridges);
  knicks.contratarJogador(anunoby);
  knicks.contratarJogador(hart);
  knicks.contratarJogador(kat);

  // forçando erro - não pode ter + de 5 jogadores
  knicks.contratarJogador(sochan);

  spurs.exibirEquipe();

  knicks.exibirEquipe();

  Partida jogo1 = Partida(spurs, knicks, DateTime.now());
  // Partida jogo2 = Partida(spurs, knicks, DateTime.now());
  // Partida jogo3 = Partida(knicks, spurs, DateTime.now());
  // Partida jogo4 = Partida(knicks, spurs, DateTime.now());
  // Partida jogo5 = Partida(spurs, knicks, DateTime.now());
  // Partida jogo6 = Partida(knicks, spurs, DateTime.now());
  // Partida jogo7 = Partida(spurs, knicks, DateTime.now());
  
  jogo1.simularPartida();
  // jogo2.simularPartida();
  // jogo3.simularPartida();
  // jogo4.simularPartida();
  // jogo5.simularPartida();
  // jogo6.simularPartida();
  // jogo7.simularPartida();

  double nivel = wembanyama.calcularNivel();
  print("Wembanyama tem ${wembanyama.nivelArremesso} de nível de arremesso.");
  print("Wembanyama tem ${wembanyama.nivelRebote} de nível de rebote.");
  print("Wembanyama tem ${wembanyama.nivelPasse} de nível de passe.");
  print("O nível geral de Wembanyama é $nivel");

  wembanyama.treinar();
  wembanyama.treinar();
  wembanyama.treinar();

  nivel = wembanyama.calcularNivel();
  print("Wembanyama tem ${wembanyama.nivelArremesso} de nível de arremesso.");
  print("Wembanyama tem ${wembanyama.nivelRebote} de nível de rebote.");
  print("Wembanyama tem ${wembanyama.nivelPasse} de nível de passe.");
  print("O nível geral de Wembanyama é $nivel");

  print("Wembanyama tem ${wembanyama.estatisticas.pontosPorJogo()} pontos por jogo.");
  print("Wembanyama tem ${wembanyama.estatisticas.rebotesPorJogo()} rebotes por jogo.");
  print("Wembanyama tem ${wembanyama.estatisticas.assistenciasPorJogo()} assistências por jogo.");

  spurs.exibirEquipe();

  knicks.exibirEquipe();

}
