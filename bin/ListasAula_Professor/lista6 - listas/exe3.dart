/*3 Crie um algoritimo que solicite nomes ao usuário, não existe uma quatidade máxima nem minima. 
Quando informado a palavra SAIR, exiba a listade nomes e a quantidade de nomes informada.
*/



import 'dart:io';

void main() {
  const sair = 'SAIR';
  List<String> listaNomes = [];

  String valor = '';
  while(valor.toUpperCase() != sair){
    print('Informe um nome:');
    valor = stdin.readLineSync()!;
    if(valor.toUpperCase() != sair && valor.isNotEmpty){
      listaNomes.add(valor);
    }
  }

  for(int i = 0 ; i < listaNomes.length ; i++){
    print(listaNomes[i]);
  }

  print('Qtde de nomes ${listaNomes.length}');
}