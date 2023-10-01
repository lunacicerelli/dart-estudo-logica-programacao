import 'dart:io';

void main() {
  print('Informe o numero 1:');
  int numero1 = int.parse(stdin.readLineSync()!);

  print('Informe o numero 2:');
  int numero2 = int.parse(stdin.readLineSync()!);

  int resultado = 19;
  if(numero1 == numero2){
    resultado = numero1 + numero2;
  }else{
    resultado = numero1 * numero2;
  }

  print('Resultado : $resultado');
}