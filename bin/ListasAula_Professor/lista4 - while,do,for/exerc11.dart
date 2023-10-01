/*11. Solicite 10 números e informe quantos deles estão no intervalo entre 10 e 20.
*/


import 'dart:io';

void main() {
  const intervaloInicial = 10;
  const intervaloFinal = 20;

  int quantidade = 0;
  
  for(int contador = 1 ; contador < 11 ; contador++){
    print('Informe o número $contador:');
    int valor = int.parse(stdin.readLineSync()!);
    if(valor >= intervaloInicial && valor <= intervaloFinal){
      quantidade++;
    }
  }
  print('$quantidade número(s) estão entre o intervalo de $intervaloInicial e $intervaloFinal');
}