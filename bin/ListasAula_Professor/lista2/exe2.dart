import 'dart:io';

void main() {
  print('Informe um número:');
  String numero = stdin.readLineSync()!;
  int valor = int.parse(numero);

  int resto = valor % 2;
  if(resto == 0){
    print('é par');
  }else{
    print('é ímpar');
  }
}