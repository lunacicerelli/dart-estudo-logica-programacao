/* Pedir as 3 notas (double) do aluno e informar a média final dele, com 1 casa decimal
*/

import 'dart:io';

void main() {
  print('Digite a primeira nota: ');
  double nota1 = double.parse(stdin.readLineSync()!);

    print('Digite a segunda nota: ');
  double nota2 = double.parse(stdin.readLineSync()!);

    print('Digite a terceira nota: ');
  double nota3 = double.parse(stdin.readLineSync()!);

double somaMedia = nota1 + nota2 + nota3;
// double somaMedia = :(nota1 + nota2 + nota3) / 3;
 
 double valorFinal = somaMedia / 3;

 String notaFinal = valorFinal.toStringAsFixed(1);

 print('O valor da média é: $notaFinal');



//String notaFinal2 = ((nota1 + nota2 + nota3) / 3).toStringAsFixed(1);


}