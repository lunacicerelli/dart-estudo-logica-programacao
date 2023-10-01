/*10. Solicite 10 números e informe quantos são pares e quantos são ímpares.
*/


import 'dart:io';

void main() {
  int qtdePares = 0;
  int qtdeImpares = 0;
  
  for(int contador = 1 ; contador < 11 ; contador++){
    print('Informe o número $contador:');
    int valor = int.parse(stdin.readLineSync()!);
    if(valor % 2 == 0){
      qtdePares++;
    }else{
      qtdeImpares++;
    }
  }

  print('$qtdePares pares e $qtdeImpares ímpares');
}