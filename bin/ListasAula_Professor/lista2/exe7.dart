
import 'dart:io';

void main() {
  print('Informe o número 1:');
  int num1 = int.parse(stdin.readLineSync()!);

  print('Informe o número 2:');
  int num2 = int.parse(stdin.readLineSync()!);

  print('Informe o número 3:');
  int num3 = int.parse(stdin.readLineSync()!);

  int menor;

  if(num1 < num2 && num1 < num3){
    menor = num1;
  } else if (num2 < num1 && num2 < num3){
    menor = num2;
  } else {
    menor = num3;
  }

  print('O menor é $menor');
}