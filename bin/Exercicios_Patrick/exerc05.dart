/* Ler o nome de 2 times e a quantidade de gols marcados de cada um deles. No final, mostrar o nome do time 
ganhador ou "empate" caso tiverem a mesma quantidade de gols marcados.
*/

import 'dart:io';

void main() {
  String vencedor = "";
  int quantidadeMaiorGols = -1;
  bool empatou = false;

  for (int contador = 1; contador <= 2; contador++) {
    print('Digite o nome do $contadorª time:');
    String time = stdin.readLineSync()!;

    print('Digite a quantidade de gols:');
    int gols = int.parse(stdin.readLineSync()!);

    if (gols > quantidadeMaiorGols) {
      vencedor = time;
      quantidadeMaiorGols = gols;
    } else if (gols == quantidadeMaiorGols) {
      empatou = true;
    }
  }

  if (empatou) {
    print('Empatou');
  } else {
    print('O time vencedor é $vencedor');
  }
}
