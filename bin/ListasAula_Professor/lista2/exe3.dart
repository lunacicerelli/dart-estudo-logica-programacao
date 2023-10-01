
import 'dart:io';

void main() {
  print('Informe um número:');
  String numeroStr = stdin.readLineSync()!;
  int numero = int.parse(numeroStr);
  if(numero >= 0){
    print('Positivo');
  }else{
    print('Negativo');
  }
  // if(numero < 0){
  //   print('Negativo');
  // }else{
  //   print('Positivo');
  // }
}