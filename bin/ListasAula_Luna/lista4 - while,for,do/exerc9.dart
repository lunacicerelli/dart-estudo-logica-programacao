/*9. Crie um algoritmo que calcule a idade de várias pessoas. Enquanto não for digitado
“SAIR” o algoritmo deve continuar solicitando a idade a contabilizando. Ao final,
exiba a média de idade e quantas pessoas foram contadas.
*/


import 'dart:io';

void main() {

  int idade;
  String cancel = 'SAIR';

  print("Digite sua idade ou SAIR");
  idade = int.parse(stdin.readLineSync()!);

 while (idade != cancel) {
    print('Digite sua idade ou SAIR');
    idade = int.parse(stdin.readLineSync()!);}
}
    
/*
if ()

} if ( )




  int somaIdade = idade;


  print('A soma da idade é:' $somaIdade);

}

*/