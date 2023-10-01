/*. (while) Crie um algoritmo para um sistema de votação, conforme a tabela abaixo,
solicite o número do candidato e contabilize o seu voto. Ao pressionar 5 o sistema
deve exibir a quantidade de votos que cada candidato recebeu, informar quem foi
eleito ou se será necessário uma nova votação.

1 Humberto
2 Maria
3 Mário
4 Antônio
*/


import 'dart:io';

void main() {
  
  int votosHuberto = 0;
  int votosMaria = 0;
  int votosMario = 0;
  int votosAntonio = 0;

  String voto = '';
  while(voto != '5'){
    print('Informe o número do candidato:');
    voto = stdin.readLineSync()!;
    switch(voto){
      case '1':
        votosHuberto++;
        break;
      case '2':
        votosMaria++;
        break;
      case '3':
        votosMario++;
        break;
      case '4':
        votosAntonio++;
        break;
      default:
        print('Número do candidato inválido!');
    }
  }

  print('Quantidade de votos:');
  print('\tHumberto: $votosHuberto');
  print('\tMaria: $votosMaria');
  print('\tMário: $votosMario');
  print('\tAntônio: $votosAntonio');

  if(votosHuberto > votosMaria && votosHuberto > votosMario && votosHuberto > votosAntonio){
    print('O Humberto foi eleito');
  }else if(votosMaria > votosHuberto && votosMaria > votosMario && votosMaria > votosAntonio){
    print('O Maria foi eleita');
  }else if(votosMario > votosHuberto && votosMario > votosMaria && votosMario > votosAntonio){
    print('O Mário foi eleita');
  }else if(votosAntonio > votosHuberto && votosAntonio > votosMaria && votosAntonio > votosMario){
    print('O Antônio foi eleita');
  }else{
    print('Segundo turno');
  }
}