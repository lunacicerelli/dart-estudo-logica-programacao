/*3 Crie um algoritimo que solicite nomes ao usuário, não existe uma quatidade máxima nem minima. 
Quando informado a palavra SAIR, exiba a listade nomes e a quantidade de nomes informada.
*/

import 'dart:io';

void main() {

  List<String> listanomeS = [];
  String nomes = '';
  const sair = 'SAIR';


  while(nomes.toUpperCase() != sair){
    print('Digite um nome:');
    nomes = stdin.readLineSync()!;}

    if(nomes.toUpperCase() != sair && nomes.isNotEmpty){
      listanomeS.add(nomes);
}

for (int i = 0; i < listanomeS.length; i++) {
    print(listanomeS[i]);
  }

  print('Quantidade de nomes $listanomeS'); //ajustar essa linha

  }

