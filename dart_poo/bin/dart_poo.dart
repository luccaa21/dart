import 'package:dart_poo/ala.dart';
import 'package:dart_poo/armador.dart';
import 'package:dart_poo/equipe.dart';
import 'package:dart_poo/partida.dart';
import 'package:dart_poo/pivo.dart';

void main(List<String> arguments) {
  
  Equipe spurs = Equipe('Spurs', 'San Antonio');

  Armador castle = Armador('Stephon Castle', 5, 2.01, 21, 83, 85, 89, 92, false);
  Armador harper = Armador('Dylan Harper', 2, 1.98, 20, 85, 82, 91, 94, false);
  Ala champagnie = Ala('Julian Champagnie', 30, 2.04, 24, 91, 74, 78, 77, false);
  Ala vassell = Ala('Devin Vassell', 24, 1.98, 25, 90, 84, 80, 84, true);
  Pivo wembanyama = Pivo('Victor Wembanyama', 1, 2.25, 22, 87, 94, 83, true, true);

  spurs.contratarJogador(castle);
  spurs.contratarJogador(harper);
  spurs.contratarJogador(champagnie);
  spurs.contratarJogador(vassell);
  spurs.contratarJogador(wembanyama);

  Equipe knicks = Equipe('Knicks', 'Nova York');

  Armador brunson = Armador('Jalen Brunson', 11, 1.88, 29, 90, 68, 88, 93, true);
  Armador bridges = Armador('Mikal Bridges', 25, 2.01, 29, 87, 88, 80, 79, false);
  Ala anunoby = Ala('OG Anunoby', 8, 2.04, 28, 88, 86, 78, 90, true);
  Ala hart = Ala('Josh Hart', 3, 1.98, 31, 80, 89, 82, 86, false);
  Pivo kat = Pivo('Karl-Anthony Towns', 32, 2.13, 30, 89, 86, 78, false, false);

  knicks.contratarJogador(brunson);
  knicks.contratarJogador(bridges);
  knicks.contratarJogador(anunoby);
  knicks.contratarJogador(hart);
  knicks.contratarJogador(kat);

  spurs.exibirEquipe();

  Partida jogo1 = Partida(spurs, knicks, DateTime.now());
  
  jogo1.simularPartida();

}
