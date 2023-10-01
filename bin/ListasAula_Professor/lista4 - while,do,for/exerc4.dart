/*4. (do-while) Escreva um algoritmo onde o usuário deve informar as opções do menu
de 1 à 5. Enquanto não for digitado um valor válido, permaneça solicitando a opção.
*/



import 'dart:io';

void main() {
  
  int opcao;

  do {
    print('Informe um número de 1 à 5:');
    opcao = int.parse(stdin.readLineSync()!);
    if(opcao < 1 || opcao > 5){
      print('Opção inválida!');
    }
  }while(opcao < 1 || opcao > 5);
  //}while( !(opcao >= 1 && opcao <= 5) );

  print('Fim');
}