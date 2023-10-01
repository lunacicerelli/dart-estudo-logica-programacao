
import 'dart:io';

void main() {
  print('Informe a nota 1:');
  double nota1 = double.parse(stdin.readLineSync()!);

  print('Informe a nota 2:');
  double nota2 = double.parse(stdin.readLineSync()!);

  print('Informe a nota 2:');
  double nota3 = double.parse(stdin.readLineSync()!);

  double media = (nota1 + nota2 + nota3) / 3;

  print('Média: ${media.toStringAsFixed(2)}');

  if(media >= 7){
    print('aprovado');
  } else {
    print('reprovado');
  }
}